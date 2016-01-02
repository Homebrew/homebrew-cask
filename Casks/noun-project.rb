cask 'noun-project' do
  version '1.1.3'
  sha256 '48cccb6c6e96f98eb3e31f10ec5a9478c1448637aa5c6e689d98f7d5b4c86931'

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
