cask "flying-carpet" do
  version "9.0.4,9.0.0"
  sha256 "686dfec58bbd3cbfd495c74dd5c8c7c7d5fd18b5b0b108e6e44b69d6433ac80a"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version.csv.second || version.csv.first}/macOS_FlyingCarpet_#{version.csv.first}.zip"
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

  depends_on macos: ">= :ventura"

  app "FlyingCarpet.app"

  zap trash: [
    "~/Library/Caches/dev.spiegl",
    "~/Library/Preferences/com.yourcompany.flyingcarpet.plist",
    "~/Library/Preferences/dev.spiegl.plist",
    "~/Library/Saved Application State/com.yourcompany.flyingcarpet.savedState",
    "~/Library/Saved Application State/dev.spiegl.savedState",
    "~/Library/WebKit/dev.spiegl",
  ]
end
