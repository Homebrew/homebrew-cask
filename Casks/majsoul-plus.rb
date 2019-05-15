cask 'majsoul-plus' do
  version '1.11.2'
  sha256 '380225037efd0c3347266ff00e8bcf2c94e0926499b459101e8f9d12a27aa6a9'

  url "https://github.com/MajsoulPlus/majsoul-plus-client/releases/download/v#{version}/Majsoul_Plus-darwin.dmg"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus-client/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus-client'

  app 'Majsoul Plus.app'
end
