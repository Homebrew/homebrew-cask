cask "marvel" do
  version "10.7.2,4933"
  sha256 "1df8ec89492c2d6a62dcb8cc059b078e6354ee0d31a320b1506a01fac6d4a50d"

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
