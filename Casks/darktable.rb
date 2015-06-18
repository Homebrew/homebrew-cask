cask :v1 => 'darktable' do
  version '1.6.6'
  sha256 'bce9a792ee362c47769839ec3e49973c07663dbdf6533ef5a987c93301358607'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'http://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
