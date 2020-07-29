cask 'mucommander' do
  version '0.9.4-2'
  sha256 '1f0dee9c1a4713b462d5ccae5799ca3bb48178c1877715dd34213183d0fc960a'

  # github.com/mucommander/mucommander/ was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom'
  name 'muCommander'
  homepage 'https://www.mucommander.com/'

  app 'muCommander.app'
end
