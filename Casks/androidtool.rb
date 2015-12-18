cask 'androidtool' do
  version '1.51'
  sha256 '16419eecff75c227aa43bf71ed429789fac2ccc0de3c4a6dcac55eaf0ee71154'

  url "https://github.com/mortenjust/androidtool-mac/releases/download/#{version}/AndroidTool#{version}.zip"
  appcast 'https://github.com/mortenjust/androidtool-mac/releases.atom'
  name 'AndroidTool'
  homepage 'https://github.com/mortenjust/androidtool-mac'
  license :apache

  app 'AndroidTool.app'
end
