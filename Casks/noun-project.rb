cask 'noun-project' do
  version '2.2.1'
  sha256 '37c526f8800ba9daa237f87dff46163904aaf160790fff5d3f7b90ce1981b461'

  # amazonaws.com/nounproject was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  appcast 'https://thenounproject.com/for-mac/feed/',
          checkpoint: '283a7c4feb1e9aa567d99f5816cceb3f22856cb7cd0038b4cd1888c3ba5678ab'
  name 'Noun Project'
  homepage 'https://thenounproject.com/'

  depends_on macos: '>= :mavericks'

  app 'Noun Project.app'
end
