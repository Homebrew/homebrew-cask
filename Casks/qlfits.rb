cask 'qlfits' do
  version '3.2.1'
  sha256 'eda87ae285112a629fc7261692efc576b6d675a5ced1a1ed3c120257312811a3'

  url "https://github.com/onekiloparsec/QLFits/releases/download/#{version}/QLFits#{version.major}.qlgenerator.zip"
  appcast 'https://github.com/onekiloparsec/QLFits/releases.atom'
  name 'QLFits'
  homepage 'https://github.com/onekiloparsec/QLFits'

  qlplugin "QLFits#{version.major}.qlgenerator"

  zap trash: '~/Library/Preferences/com.softtenebraslux.qlfitsgenerator.plist'
end
