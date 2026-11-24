cask "bambu-studio" do
  os macos: "mac", linux: "ubu24"
  name_start = on_system_conditional macos: "Bambu_Studio", linux: "BambuStudio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "02.09.02.62,20261124164959"
  sha256 arm:          "bcd8bbec4b95e673badb156de56fe6a9d86987425a7cf7d89807771373a20213",
         intel:        "bcd8bbec4b95e673badb156de56fe6a9d86987425a7cf7d89807771373a20213",
         x86_64_linux: "01a9d25179df6495ecb3d402628232b31a10cff1f8991f052988383adf680eea"

  on_macos do
    app "BambuStudio.app"

    zap trash: [
      "/Library/Logs/DiagnosticsReports/BambuStudio*",
      "~/Library/Application Support/BambuStudio",
      "~/Library/Caches/com.bambulab.bambu-studio",
      "~/Library/HTTPStorages/com.bambulab.bambu-studio.binarycookies",
      "~/Library/Preferences/com.bambulab.bambu-studio.plist",
      "~/Library/Saved Application State/com.bambulab.bambu-studio.savedState",
      "~/Library/WebKit/com.bambulab.bambu-studio",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "#{name_start}_#{os}-v#{version.csv.first}-#{version.csv.second}.#{url_end}",
              target: "BambuStudio.AppImage"

    zap trash: "~/.config/BambuStudio"
  end

  release_version = version.csv.third || version.csv.first
  url "https://github.com/bambulab/BambuStudio/releases/download/v#{release_version}/#{name_start}_#{os}-v#{version.csv.first}-#{version.csv.second}.#{url_end}"
  name "Bambu Studio"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url :url
    regex(%r{/\D*(\d+(?:\.\d+)+[^/]*?)/Bambu[._-]Studio(?:[._-]mac)?[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        parts = match.values_at(2, 3)
        parts << match[1] if match[1] != match[2]
        parts.join(",")
      end
    end
  end

  conflicts_with cask: "bambu-studio@beta"
end
