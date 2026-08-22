cask "flying-carpet" do
  version "10.0.4,10.0.0"

  on_macos do
    sha256 "b6db75afed626081275fd56215330fcfaf16af3070ddcfeda09c91a8c9ba2771"

    url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version.csv.second || version.csv.first}/macOS_FlyingCarpet_#{version.csv.first}.zip"

    depends_on macos: :ventura

    app "FlyingCarpet.app"

    zap trash: [
      "~/Library/Application Scripts/dev.spiegl.FlyingCarpet",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.spiegl.flyingcarpet.sfl*",
      "~/Library/Caches/dev.spiegl",
      "~/Library/Containers/dev.spiegl.FlyingCarpet",
      "~/Library/Preferences/com.yourcompany.flyingcarpet.plist",
      "~/Library/Preferences/dev.spiegl.plist",
      "~/Library/Saved Application State/com.yourcompany.flyingcarpet.savedState",
      "~/Library/Saved Application State/dev.spiegl.savedState",
      "~/Library/WebKit/dev.spiegl",
    ]
  end
  on_linux do
    sha256 "21a056e19d3a4cc0e6aa3d4c1053c0daeeca82e2c35adcae486fac127323c0aa"

    # Upstream only refreshes the macOS zip in place; the Linux asset keeps the
    # release tag's version, so it cannot share a url with the macOS one.
    url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version.csv.second || version.csv.first}/linux_FlyingCarpet_#{version.csv.second || version.csv.first}_amd64.AppImage"

    depends_on arch: :x86_64

    app_image "linux_FlyingCarpet_#{version.csv.second || version.csv.first}_amd64.AppImage",
              target: "FlyingCarpet.AppImage"
  end

  name "Flying Carpet"
  desc "File transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  # Upstream regularly adds patch versions to existing releases
  # (e.g., adding 9.0.1 files to the 9.0.0 release), so we append
  # the tag version if it differs from the file version.
  livecheck do
    url :url
    regex(/macOS[._-]FlyingCarpet[._-]v?(\d+(?:\.\d+)+)(?:[._-]|.*\.zip)/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        tag_version = release["tag_name"]&.[](/^v?(\d+(?:\.\d+)+)$/i, 1)
        next if tag_version.blank?

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          (match[1] == tag_version) ? tag_version : "#{match[1]},#{tag_version}"
        end
      end.flatten
    end
  end
end
