cask "marvel" do
  version "10.4"
  sha256 "104b93f111469981fc4d07c062d85cff4b9580b65bac50d387e5a799250a99f2"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
