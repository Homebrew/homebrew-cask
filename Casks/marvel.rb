cask "marvel" do
  version "10.9.7,5072"
  sha256 "87e24bb48022ab88c91d9a9509220943728004d6578df68cd2b52a9c5b7724fd"

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
