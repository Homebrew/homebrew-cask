cask 'noun-project' do
  version '1.1.3'
  sha256 '48cccb6c6e96f98eb3e31f10ec5a9478c1448637aa5c6e689d98f7d5b4c86931'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  appcast 'https://thenounproject.com/for-mac/feed/',
          :sha256 => 'e6b9c098280afc7dad8f170c3aecc95edef27a825fd871636fa00388687c288d'
  name 'Noun Project'
  homepage 'https://thenounproject.com'
  license :commercial

  depends_on :macos => '>= 10.9'

  app 'Noun Project.app'
end
