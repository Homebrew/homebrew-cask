cask "rapidminer-studio" do
  version "10.1.1"
  sha256 :no_check

  url "https://releases.rapidminer.com/latest/rapidminer-studio/rapidminer-studio-osx.dmg"
  name "RapidMiner Studio"
  desc "Data science platform"
  homepage "https://rapidminer.com/products/studio/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "RapidMiner Studio.app"
end
