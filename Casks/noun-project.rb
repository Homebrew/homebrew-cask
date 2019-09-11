cask 'noun-project' do
  version '2.2.4'
  sha256 '03ce8569cf7148e9f882d40e2e10ff8f4f48f570e7fe3c8dc0706d41e4fb5dbb'

  # nounproject.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nounproject.s3.amazonaws.com/mac/Noun-Project-#{version}.dmg"
  appcast 'https://thenounproject.com/for-mac/feed/'
  name 'Noun Project'
  homepage 'https://thenounproject.com/'

  app 'Noun Project.app'
end
