cask "marvel" do
  version "9.9.2"
  sha256 "3af311b87452ea18307d1094745c8aa14197f1b2fe9b545c89549f33c1f3b7eb"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
