cask 'darktable' do
  version '2.0.6'
  sha256 '8376ab1bb74f4a25998ff1a7f03c8498b57064bf27700c9af53a7356e5a2ee1e'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '132bcc2ab579209a8a630e928085e14cc514185c39ffdebd32e6192c3f067576'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  app 'darktable.app'
end
