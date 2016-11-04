cask 'darktable' do
  version '2.0.7'
  sha256 '0b341f3f753ae0715799e422f84d8de8854d8b9956dc9ce5da6d5405586d1392'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '73af5565e5b7b288c2242b68309bc9e26e68ad3911feaa2835b825f7850e7cae'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  app 'darktable.app'
end
