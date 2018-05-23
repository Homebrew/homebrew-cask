cask 'cantata' do
  version '2.3.0'
  sha256 'a67830578a3faf7df01e4a32021fd1af788d442ab61cde54ec8b50a28addcafd'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: '56beeeba7f4c8a871baea59f7e721903d10f8e376d8309f982792db9e54a8e15'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
