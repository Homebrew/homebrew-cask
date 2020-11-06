cask "golly" do
  version "4.0"
  sha256 "6bacc3dede47791ef089b5ed952137ae39f88a09521d4a47b38298dccb6a2db1"

  # downloads.sourceforge.net/golly/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
  appcast "https://sourceforge.net/projects/golly/rss?path=/golly"
  name "Golly"
  homepage "https://golly.sourceforge.io/"

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
