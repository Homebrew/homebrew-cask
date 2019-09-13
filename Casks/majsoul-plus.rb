cask 'majsoul-plus' do
  version '1.12.2'
  sha256 'ba75bff5e13e3798e9d3747b6583279ba03c33d4267b44865a54d8ef1896331a'

  url "https://github.com/MajsoulPlus/majsoul-plus/releases/download/v#{version}/Majsoul_Plus-darwin.dmg"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus/'

  app 'Majsoul Plus.app'
end
