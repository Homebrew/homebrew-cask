cask "marvel" do
  version "10.7.1,4840"
  sha256 "2ed43201bbdf61975a29cb138cd247cf578030aef31abef3829c718080f0c8fe"

  url "https://storage.googleapis.com/sketch-plugin/#{version.before_comma}/Marvel.zip",
      verified: "storage.googleapis.com/sketch-plugin/"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  livecheck do
    url "https://storage.googleapis.com/sketch-plugin/app.xml"
    strategy :sparkle
  end

  app "Marvel.app"
end
