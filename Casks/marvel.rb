cask "marvel" do
  version "10.6.1,4659"
  sha256 "da141012c3f8c39c4a3be1d6c4c8277d7b304d47dfc8fdc9ab528bbd7f0baca5"

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
