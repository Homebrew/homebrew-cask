cask 'isubtitle' do
  version '3.0.4'
  sha256 '71692dd773fa2d128ac927c6521268364ff119a305d844f8fb33053a5505e1ff'

  url "http://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "http://www.bitfield.se/isubtitle#{version.major}/changelog.xml",
          checkpoint: '5a4d1b53448ffc6d8f2d992f5cb0434620df219ef11ae3e397269d04a937c76e'
  name 'iSubtitle'
  homepage 'http://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
