cask 'darktable' do
  version '2.0.0'
  sha256 '1019646522c3fde81ce0de905220a88b506c7cec37afe010af7d458980dd08bd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '18dea15754fab00cacb838cdee76e76b08b252d18c424034e1ebd9d47a423772'
  name 'darktable'
  homepage 'https://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
