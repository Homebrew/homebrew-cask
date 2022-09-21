cask "marvel" do
  version "10.9.9,5094"
  sha256 "6278d47ea009bcb12b8422e69ae39cae03c75b3aad1d674facf26148d5b99914"

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
