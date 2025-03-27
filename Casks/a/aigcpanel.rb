cask "aigcpanel" do
    arch arm: "arm64", intel: "x64"
  
    version "0.9.0"
    sha256 :no_check
  
    url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version}/AigcPanelPro-#{version}-mac-#{arch}.dmg"
    name "AigcPanel"
    desc "OpenSource Digital Human"
    homepage "https://aigcpanel.com/"
  
    livecheck do
        url :url
        strategy :github_latest
    end
  
    auto_updates true
    depends_on macos: ">= :catalina"
  
    app "AigcPanel.app"
  
    zap trash: [
      "~/Library/Application Support/aigcpanel",
    ]
  end