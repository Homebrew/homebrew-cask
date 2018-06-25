cask 'cantata' do
  version '2.3.0'
  sha256 'a67830578a3faf7df01e4a32021fd1af788d442ab61cde54ec8b50a28addcafd'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
