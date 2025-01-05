cask "marvel" do
  version "11.2.4"
  sha256 "a72846f42b02ac14b9844843da5c73278703213a9bc9797d19b8ceeb58db986d"

  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip",
      verified: "storage.googleapis.com/sketch-plugin/"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  livecheck do
    url "https://storage.googleapis.com/sketch-plugin/app.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Marvel.app"

  zap trash: "~/Library/Caches/com.marvelprototyping.marvelmacos"
end
