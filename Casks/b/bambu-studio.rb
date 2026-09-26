cask "bambu-studio" do
  os macos: "mac", linux: "ubuntu24.04"
  name_start = on_system_conditional macos: "Bambu_Studio", linux: "BambuStudio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "02.08.02.61,20260820225108"
  sha256 arm:          "cf648a95858fb630e1353c4987038df60d6caab693f18411fb95fb809f2d6926",
         intel:        "cf648a95858fb630e1353c4987038df60d6caab693f18411fb95fb809f2d6926",
         x86_64_linux: "d501b103fac5424513ec0e8d6bc145fb30719de2c7d94d7320d723740c81a7fd"

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

    app_image "BambuStudio_ubuntu24.04-v#{version.csv.first}-#{version.csv.second}.AppImage",
              target: "BambuStudio.AppImage"

    zap trash: "~/.config/BambuStudio"
  end

  url "https://github.com/bambulab/BambuStudio/releases/download/v#{version.csv.third || version.csv.first}/#{name_start}_#{os}-v#{version.csv.first}-#{version.csv.second}.#{url_end}"
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

        (match[2] == match[1]) ? "#{match[2]},#{match[3]}" : "#{match[2]},#{match[3]},#{match[1]}"
      end
    end
  end
end
