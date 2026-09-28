cask "aigcpanel" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.5.0"
  sha256 arm:          "0875d847e6ee490ba91027abc3c1abcccdf4a718de86d2f009c4087b4b51cd3e",
         intel:        "c359f0ae384c5e5276b5405e3a93d90960f3e64202e02d52ef851cf82675c5bd",
         arm64_linux:  "4973651fdcdb798ba0aee71397becdcd32663a8cc61c7b4949f696c1124c109c",
         x86_64_linux: "68b76c288644c5e0e0a86bd75d2ea15d97c169d3645c0fd4b7ad754ccfaea084"

  on_macos do
    app "AigcPanel.app"

    uninstall quit: "AigcPanel"

    zap trash: [
      "~/Library/Application Support/aigcpanel",
      "~/Library/Preferences/AigcPanel.plist",
      "~/Library/Saved Application State/AigcPanel.savedState",
    ]
  end
  on_linux do
    app_image "AigcPanel-#{version.csv.second || version.csv.first}-linux-#{arch}.AppImage",
              target: "AigcPanel.AppImage"
  end

  url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version.csv.first}/AigcPanel-#{version.csv.second || version.csv.first}-#{os}-#{arch}.#{url_end}"
  name "AigcPanel"
  desc "AI video, audio and broadcast generator"
  homepage "https://aigcpanel.com/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/AigcPanel[._-]v?(\d+(?:\.\d+)+)[._-]#{os}[._-]#{arch}\.#{url_end}}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end
end
