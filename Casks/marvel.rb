cask "marvel" do
  version "10.9.8,5092"
  sha256 "772c5695aadd20d54cbb73a329a33625fc6e53ea167b6c9a441b16186abcc1a1"

  url "https://storage.googleapis.com/sketch-plugin/#{version.csv.first}/Marvel.zip",
      verified: "storage.googleapis.com/sketch-plugin/"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  livecheck do
    url "https://storage.googleapis.com/sketch-plugin/app.xml"
    strategy :sparkle
  end

  app "Marvel.app"

  zap trash: "~/Library/Caches/com.marvelprototyping.marvelmacos"
end
