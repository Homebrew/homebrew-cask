cask :v1 => 'noun-project' do
  version '1.1'
  sha256 '7129db91ce7801d131241bf5fa8e918d4a2820fbbf709cb567054d9aca5f231e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  name 'Noun Project'
  appcast 'https://thenounproject.com/for-mac/feed/',
          :sha256 => '6e6d98cbd80300c45eafafe88c4320e9838d07023beb2b0d6cc9f1c3bc08e045'
  homepage 'https://thenounproject.com'
  license :commercial

  app 'Noun Project.app'

  depends_on :macos => '>= 10.9'
end
