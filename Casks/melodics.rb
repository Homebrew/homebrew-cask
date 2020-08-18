cask "melodics" do
  version "2.1.4887"
  sha256 "024fb02100dc6c66a5caac8329ce969adfd491cd8623ac8766826cfda2841b03"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
