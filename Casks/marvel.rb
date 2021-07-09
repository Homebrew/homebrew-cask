cask "marvel" do
  version "10.8.1,4979"
  sha256 "965b69dd3df86268c383473297adc4a6fab2e368f7b99e7305f983acc28b2012"

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
