cask "multimc" do
  version "0.6.11"
  sha256 :no_check

  url "https://github.com/MultiMC/MultiMC5/releases/download/#{version}/mmc-stable-osx64.tar.gz"
  appcast "https://github.com/MultiMC/MultiMC5/releases.atom"
  name "Multi MC"
  homepage "https://multimc.org/"

  app "MultiMC.app"
end
