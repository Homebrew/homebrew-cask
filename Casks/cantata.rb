cask 'cantata' do
  version '2.2.0'
  sha256 'ae94571146866a8d4d43bfb06870ccc5d31947e1b38616e8fdf1f24444ea441b'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: '2ec33166423bf32795c06f1224f21efbf29f0bcce35e6ceb9d6af2277d376106'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
