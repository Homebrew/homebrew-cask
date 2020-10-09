cask "marvel" do
  version "10.3.1"
  sha256 "3c28f919dd68cb16b05023345fb4a8f12266b4768bf1934d7b0e53f63e9cfe68"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
