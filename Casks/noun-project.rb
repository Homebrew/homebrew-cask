cask :v1 => 'noun-project' do
  version '1.1.2'
  sha256 '764b27971511ad8cce222926440b91d457294138815fd8ce2ef41c196ada81cd'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  name 'Noun Project'
  appcast 'https://thenounproject.com/for-mac/feed/',
          :sha256 => '94c3d8509a7bedcd74e33e756a39a9e21f81c3753c3a61f29d453d1ef4b38dd3'
  homepage 'https://thenounproject.com'
  license :commercial

  app 'Noun Project.app'

  depends_on :macos => '>= 10.9'
end
