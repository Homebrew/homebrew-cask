cask "audiostellar" do
  version "1.1"
  sha256 "ece5c24a840b732f55765e095ddd00592c0e2359b5eaac931d9ba9a08a2353ea"

  url "https://audiostellar.xyz/downloads/#{version}/AudioStellar_v#{version}.dmg"
  name "AudioStellar"
  desc "Open source data-driven experimental sampler"
  homepage "https://audiostellar.xyz/"

  livecheck do
    url :homepage
    regex(/AudioStellar[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "AudioStellar.app"

  zap trash: [
    "~/Library/Preferences/xyz.audiostellar.plist",
    "~/Library/Saved Application State/xyz.audiostellar.savedState",
  ]
end
