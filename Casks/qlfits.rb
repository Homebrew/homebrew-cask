cask 'qlfits' do
  version '3.1.2'
  sha256 '52748bb989d86132e77b302e9ec5e9949295899292bb817ee30ab14ae02395ff'

  url "https://github.com/onekiloparsec/QLFits/releases/download/#{version}/QLFits#{version.major}.qlgenerator.zip"
  appcast 'https://github.com/onekiloparsec/QLFits/releases.atom'
  name 'QLFits'
  homepage 'https://github.com/onekiloparsec/QLFits'

  qlplugin "QLFits#{version.major}.qlgenerator"

  zap trash: '~/Library/Preferences/com.softtenebraslux.qlfitsgenerator.plist'
end
