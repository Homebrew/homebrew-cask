cask :v1 => 'darktable' do
  version '1.6.9'
  sha256 'f79b0c4f317f87aab353c25216f2a3628efa2a072b1ce64c21d075a3dda54e9e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'http://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
