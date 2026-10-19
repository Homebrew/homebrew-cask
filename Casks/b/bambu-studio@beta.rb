cask "bambu-studio@beta" do
  os macos: "mac", linux: "ubu24"
  name_start = on_system_conditional macos: "Bambu_Studio", linux: "BambuStudio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  version_separator = on_system_conditional macos: "_", linux: "-"
  livecheck_regex = on_system_conditional(
    macos: %r{
      /\D*(\d+(?:\.\d+)+[^/]*?)/
      Bambu[._-]Studio(?:[._-]mac)?[._-]
      v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg
    }ix,
    linux: %r{
      /\D*(\d+(?:\.\d+)+[^/]*?)/
      BambuStudio[._-](?:ubu24|ubuntu24\.04)[._-]
      v?(\d+(?:\.\d+)+)[._-](\d+)\.AppImage
    }ix,
  )

  on_macos do
    version "02.08.04.61,20260929132640,02.08.04.57"
    sha256 "06f86e1ce4fbcf7fcab177bca5b0f24d4fd100dc4f568bfbcacaf4aa81ff5a63"

    app "BambuStudio.app"

    zap trash: [
      "/Library/Logs/DiagnosticsReports/BambuStudio*",
      "~/Library/Application Support/BambuStudioBeta",
      "~/Library/Caches/com.bambulab.bambu-studio",
      "~/Library/HTTPStorages/com.bambulab.bambu-studio.binarycookies",
      "~/Library/Preferences/com.bambulab.bambu-studio.plist",
      "~/Library/Saved Application State/com.bambulab.bambu-studio.savedState",
      "~/Library/WebKit/com.bambulab.bambu-studio",
    ]
  end
  on_linux do
    version "02.08.04.57,20260922164607"
    sha256 "4870e355fa5e98e3a47bcd196b7ae16c2e9c15896a81ceaabe09ddbefa80d2f0"

    depends_on arch: :x86_64

    app_image "BambuStudio_ubu24-v#{version.csv.first}-#{version.csv.second}.AppImage",
              target: "BambuStudio.AppImage"

    zap trash: "~/.config/BambuStudio"
  end

  url "https://github.com/bambulab/BambuStudio/releases/download/v#{version.csv.third || version.csv.first}/#{name_start}_#{os}#{version_separator}v#{version.csv.first}-#{version.csv.second}.#{url_end}"
  name "Bambu Studio Beta"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url :url
    regex(livecheck_regex)
    strategy :github_releases do |json, regex|
      json.flat_map do |release|
        next [] if release["draft"] || !release["prerelease"]
        next [] unless release["name"]&.match?(/beta/i)

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          (match[2] == match[1]) ? "#{match[2]},#{match[3]}" : "#{match[2]},#{match[3]},#{match[1]}"
        end
      end.compact
    end
  end

  conflicts_with cask: "bambu-studio"
end
