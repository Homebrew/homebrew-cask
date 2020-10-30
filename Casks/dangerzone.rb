cask "dangerzone" do
  version "0.1.4"
  sha256 "cdd035d5f0d48b78c36e7e4df4a7218875213600ce8ae79c0309547c0068b4b1"

  # github.com/firstlookmedia/dangerzone/ was verified as official when first introduced to the cask
  url "https://github.com/firstlookmedia/dangerzone/releases/download/v#{version}/Dangerzone.#{version}.dmg"
  appcast "https://github.com/firstlookmedia/dangerzone/releases.atom"
  name "Dangerzone"
  homepage "https://dangerzone.rocks/"

  app "Dangerzone.app"
end
