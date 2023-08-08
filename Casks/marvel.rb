cask "marvel" do
  version "11.1.0"
  sha256 "28f549114b9898453f3da71ede11439811cc3d4260eb426d356eb33e87259700"

  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip",
      verified: "storage.googleapis.com/sketch-plugin/"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  livecheck do
    url "https://storage.googleapis.com/sketch-plugin/app.xml"
    strategy :sparkle, &:short_version
  end

  app "Marvel.app"

  zap trash: "~/Library/Caches/com.marvelprototyping.marvelmacos"
end
