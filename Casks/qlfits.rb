cask 'qlfits' do
  version '3.1.2'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "https://github.com/onekiloparsec/QLFits/releases/download/#{version}/QLFits3.qlgenerator.zip"
  name 'QLFits'
  homepage 'https://github.com/onekiloparsec/QLFits'

  qlplugin 'QLFits3.qlgenerator'

  zap trash: '~/Library/Preferences/com.softtenebraslux.qlfitsgenerator.plist'
end
