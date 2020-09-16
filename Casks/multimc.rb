cask "multimc" do
  version "0.6.11"
  sha256 "8b068b7a881a06e2f2c48a1ba696ed208780014dab03b3c2b633f72c15cd7d44"

  url "https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz"
  appcast "https://github.com/MultiMC/MultiMC5/releases.atom"
  name "Multi MC"
  homepage "https://multimc.org/"

  app "MultiMC.app"
end
