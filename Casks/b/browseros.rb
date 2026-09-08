cask "browseros" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.50.3"

  on_macos do
    sha256 arm:   "6c6935ce2a0387ce7980f674849023869f8d700638a8a378534b4d2ffe3d8d39",
           intel: "b396b885b8b919c1969e3da998feb7eebd58b51495b244168fd5546cb4af3c13"

    depends_on macos: :ventura

    app "BrowserOS.app"

    zap trash: [
      "~/Library/Application Support/BrowserOS",
      "~/Library/Caches/BrowserOS",
      "~/Library/Preferences/com.browseros.BrowserOS.plist",
    ]
  end
  on_linux do
    sha256 "168967dda944ff319160d17fa778582f9083e5dbd76a9728ba20a53de8f60da4"

    depends_on arch: :x86_64

    app_image "BrowserOS_v#{version.csv.first}_#{arch}.AppImage", target: "BrowserOS.AppImage"
  end

  url "https://github.com/browseros-ai/BrowserOS/releases/download/v#{version.csv.second || version.csv.first}/BrowserOS_v#{version.csv.first}_#{arch}.#{url_end}"
  name "BrowserOS"
  desc "Open-source agentic browser"
  homepage "https://www.browseros.com/"

  # Upstream doesn't provide a macOS file with every release, so we have to
  # check multiple GitHub releases instead of only the "latest" one
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/BrowserOS[._-]v?(\d+(?:\.\d+)*)[._-]#{arch}\.dmg}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
        end
      end.flatten
    end
  end
end
