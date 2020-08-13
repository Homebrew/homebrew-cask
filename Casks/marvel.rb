cask "marvel" do
  version "9.8"
  sha256 "9c6ff05c58f1bbfe60895695e6c8ea084d2a7dab083edb7f8dc4c344260e099d"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
