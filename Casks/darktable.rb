cask :v1 => 'darktable' do
  version '1.6.7'
  sha256 '6630230049e6d2c4cdfd39585f95fbd1ee439a8dad107f7332aefeb1dd75b831'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'http://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
