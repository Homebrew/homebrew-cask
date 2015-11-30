cask :v1 => 'powerphotos' do
  version '1.1.2'
  sha256 '2822c28f1aab47fe5063e0527afe80fff3d044d181493068f9177e0ef8d8e31c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.delete('.')}.zip"
  name 'PowerPhotos'
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          :sha256 => '36cfe73bd7332b8fd6a9dcd662a4569e930ef8f2a1f212d8714631988301c64e'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'PowerPhotos.app'
end
