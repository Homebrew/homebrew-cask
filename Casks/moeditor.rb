cask 'moeditor' do
  version '0.0.1'
  sha256 'db2c282cdf9854c7189dcc7e1e608f2be02c5cfb88f0bebd638db8008ecb664b'

  url "https://github.com/Moeditor/Moeditor/releases/download/v#{version}-alpha/Moeditor-#{version}-darwin-x64.7z"
  appcast 'https://github.com/Moeditor/Moeditor/releases.atom',
          checkpoint: '4d05a4ed912c3c346257a7a6f560b39c26aeaf62d94d0b1a1caef81de82e7540'
  name 'Moeditor'
  homepage 'https://github.com/Moeditor/Moeditor'
  license :gpl

  depends_on formula: 'unar'

  app 'Moeditor-darwin-x64/Moeditor.app'
end
