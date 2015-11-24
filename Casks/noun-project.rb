cask :v1 => 'noun-project' do
  version '1.1.1'
  sha256 '2c2dde80173af2d739688e47e74562b751bc138fffef68ae765e19597fd0ae0d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  name 'Noun Project'
  appcast 'https://thenounproject.com/for-mac/feed/',
          :sha256 => 'd5805a76644fde728873403ae7df2f16049908904db69b7af2e9650773a55cba'
  homepage 'https://thenounproject.com'
  license :commercial

  app 'Noun Project.app'

  depends_on :macos => '>= 10.9'
end
