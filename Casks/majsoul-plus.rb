cask 'majsoul-plus' do
  version '1.10.6'
  sha256 'e95fad51b4e6ed2d4012dd4109e6a5ef4e6e8e20e7b9695d8dba1e51e6a91925'

  url "https://github.com/MajsoulPlus/majsoul-plus-client/releases/download/v#{version}/Majsoul_Plus-darwin.zip"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus-client/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus-client'

  app 'Majsoul Plus.app'
end
