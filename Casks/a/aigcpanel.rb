cask "aigcpanel" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "cf288a6f019d4eeba0110d7bbb3ad8c852c630eb818117ac8ba716d5aece0aa7",
         intel: "73324d009b8a79417d2146355b38c9e9ce17419c565a35924949169e98a3a453"

  url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version}/AigcPanelPro-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/aigcpanel/"
  name "AigcPanel"
  desc "Open-source Digital Human"
  homepage "https://aigcpanel.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "AigcPanel.app"

  zap trash: "~/Library/Application Support/AigcPanel"
end
