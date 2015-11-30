cask :v1 => 'powerphotos' do
  version '1.1.12'
  sha256 '2822c28f1aab47fe5063e0527afe80fff3d044d181493068f9177e0ef8d8e31c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.sub('1.', '').delete('.')}.zip"
  name 'PowerPhotos'
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          :sha256 => 'edf08e27f7b1a42e1da538a536631382e1c92e2dd148b4ff4cae93dbde48f25e'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'PowerPhotos.app'
end
