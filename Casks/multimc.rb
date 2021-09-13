cask "multimc" do
  version "0.6.13"
  sha256 :no_check

  url "https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz"
  name "Multi MC"
  desc "Minecraft launcher"
  homepage "https://multimc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "MultiMC.app"

  zap trash: [
    "~/Library/Caches/MultiMC",
    "~/Library/Preferences/org.multimc.MultiMC5.plist",
    "~/Library/Saved Application State/org.multimc.MultiMC5.savedState",
  ]
end
