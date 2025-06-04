cask "marvel" do
  version "11.4"
  sha256 "2d69f35903e76442e830e9f96dc965e5546fc67db213beb667f29e35a80c8f95"

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
