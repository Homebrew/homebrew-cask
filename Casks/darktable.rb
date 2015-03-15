cask :v1 => 'darktable' do
  version '1.6.3'
  sha256 'be568ad20bfb75aed703e2e4d0287b27464dfed1e70ef2c17418de7cc631510f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'http://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
