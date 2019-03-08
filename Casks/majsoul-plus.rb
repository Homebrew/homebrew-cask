cask 'majsoul-plus' do
  version '1.11.0'
  sha256 'e31de7812695df0c061a49d012177d634ce17e26c94c5d9538698d0dd97f4ca3'

  url "https://github.com/MajsoulPlus/majsoul-plus-client/releases/download/v#{version}/Majsoul_Plus-darwin.zip"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus-client/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus-client'

  app 'Majsoul Plus.app'
end
