cask "golly" do
  version "3.4"
  sha256 "8a3e0a398348b735d17b5d45fc6d2f5bd2a31726f5d8a23329bbe5efddd1511d"

  # downloads.sourceforge.net/golly/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
  appcast "https://sourceforge.net/projects/golly/rss?path=/golly"
  name "Golly"
  homepage "https://golly.sourceforge.io/"

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
