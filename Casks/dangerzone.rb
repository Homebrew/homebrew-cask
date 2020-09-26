cask "dangerzone" do
  version "0.1.3"
  sha256 "01b8f8b1315d43ce01695d20803d43d98dccf0dff6c3a12b53c009bed4d906c6"

  # github.com/firstlookmedia/dangerzone/ was verified as official when first introduced to the cask
  url "https://github.com/firstlookmedia/dangerzone/releases/download/v#{version}/Dangerzone.#{version}.dmg"
  appcast "https://github.com/firstlookmedia/dangerzone/releases.atom"
  name "Dangerzone"
  homepage "https://dangerzone.rocks/"

  app "Dangerzone.app"
end
