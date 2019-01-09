cask 'noun-project' do
  version '2.2.4'
  sha256 '03ce8569cf7148e9f882d40e2e10ff8f4f48f570e7fe3c8dc0706d41e4fb5dbb'

  # amazonaws.com/nounproject was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  appcast 'https://thenounproject.com/for-mac/feed/'
  name 'Noun Project'
  homepage 'https://thenounproject.com/'

  depends_on macos: '>= :mavericks'

  app 'Noun Project.app'
end
