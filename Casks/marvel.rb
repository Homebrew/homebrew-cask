cask "marvel" do
  version "11.0.0,5094"
  sha256 "495fa8784e8574060ad063c02367cf8e6977271941ea60924b25de4465bebe55"

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
