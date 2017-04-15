cask 'noun-project' do
  version '2.0'
  sha256 '2025c1a2cc14d6087df23c0134db96aba1b4704d6d60d402fdf278f7c3a56ac3'

  # amazonaws.com/nounproject was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  appcast 'https://thenounproject.com/for-mac/feed/',
          checkpoint: '9ae905087f7dbaeb7006af3b20ddceb1e66d67cda62a8cfd069653474e4359ca'
  name 'Noun Project'
  homepage 'https://thenounproject.com/'

  depends_on macos: '>= :mavericks'

  app 'Noun Project.app'
end
