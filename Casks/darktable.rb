cask :v1 => 'darktable' do
  version '1.6.4'
  sha256 'e5bbf00fefcf116aec0e66d1d0cf2e2396cb0b19107402d2ef70d1fa0ab375f6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'http://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
