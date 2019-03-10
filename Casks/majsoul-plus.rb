cask 'majsoul-plus' do
  version '1.11.1'
  sha256 '41b6261801a6c29c7c7685a5e782f1f4767642bf5e066fc7b07e3a8784527a38'

  url "https://github.com/MajsoulPlus/majsoul-plus-client/releases/download/v#{version}/Majsoul_Plus-darwin.zip"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus-client/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus-client'

  app 'Majsoul Plus.app'
end
