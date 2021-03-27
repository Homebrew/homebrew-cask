cask "macdjview" do
  version "0.1.2"
  sha256 "a5869a740b0459ff2e048ff7350d0db12ea26090d6889a2fed903cd297ba7248"

  url "https://downloads.sourceforge.net/windjview/MacDjView/#{version}/MacDjView-#{version}.dmg.gz",
      verified: "downloads.sourceforge.net/windjview/"
  appcast "https://sourceforge.net/projects/windjview/rss?path=/MacDjView"
  name "MacDjView"
  homepage "https://windjview.sourceforge.io/"

  depends_on macos: "<= :mojave"

  app "MacDjView.app"
end
