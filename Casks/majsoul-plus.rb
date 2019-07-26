cask 'majsoul-plus' do
  version '1.12.1'
  sha256 'f7f2df64930dc38bd55d1e8f9495158981e04faad5304c0ef372e2653f81bc3a'

  url "https://github.com/MajsoulPlus/majsoul-plus/releases/download/v#{version}/Majsoul_Plus-darwin.dmg"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus/'

  app 'Majsoul Plus.app'
end
