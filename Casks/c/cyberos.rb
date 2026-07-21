cask "cyberos" do
  version "1.0.7"
  sha256 "48ebc88d4e585dc11596296ad58f8a287ac99a27ef67ceee7fe65f08642b0d09"

  url "https://github.com/cyberskill-official/cyberos/releases/download/v#{version}/CyberOS_#{version}_universal.dmg"
  name "CyberOS"
  desc "Desktop client for the CyberOS platform"
  homepage "https://os.cyberskill.world/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CyberOS.app"

  zap trash: [
    "~/Library/Application Support/CyberOS",
    "~/Library/Preferences/os.cyberskill.world.desktop.plist",
  ]
end
