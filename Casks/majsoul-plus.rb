cask 'majsoul-plus' do
  version '1.11.1'
  sha256 '0d44d28ce2bfd8d2419c2cc37916ee79d94ea153322823cb6edac41f37b7e3f1'

  url "https://github.com/MajsoulPlus/majsoul-plus-client/releases/download/v#{version}/Majsoul_Plus-darwin.dmg"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus-client/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus-client'

  app 'Majsoul Plus.app'
end
