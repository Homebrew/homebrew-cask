cask 'acorn' do
  version '6.1'
  sha256 '6539d8e80c41add48b984b9c2e0ad00408b742b8099bc1a0f7b9ac3a91025c0a'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '33088b8b94ae70810d42a5fa64f80def4f0c09e6f0fd3b8ddf1bc6a588af2c6a'
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
