cask 'noun-project' do
  version '1.1.3'
  sha256 '48cccb6c6e96f98eb3e31f10ec5a9478c1448637aa5c6e689d98f7d5b4c86931'

  # amazonaws.com/nounproject was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  appcast 'https://thenounproject.com/for-mac/feed/',
          checkpoint: '5f20b3ebde64e2015c4be14b8b0f93cea927df78cf443ba7c985c314273dbfc2'
  name 'Noun Project'
  homepage 'https://thenounproject.com'
  license :commercial

  depends_on macos: '>= 10.9'

  app 'Noun Project.app'
end
