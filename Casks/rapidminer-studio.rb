cask "rapidminer-studio" do
  version :latest
  sha256 :no_check

  url "https://releases.rapidminer.com/latest/rapidminer-studio/rapidminer-studio-osx.dmg"
  name "RapidMiner Studio"
  homepage "https://rapidminer.com/products/studio/"

  app "RapidMiner Studio.app"
end
