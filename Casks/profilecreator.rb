cask 'profilecreator' do
  version '0.3.0,201905171401-beta'
  sha256 'ebdf603bca3b6c72f436c93944d1b2b7342e410ff8509ad970cea4606d39112b'

  url "https://github.com/erikberglund/ProfileCreator/releases/download/v#{version.before_comma}/ProfileCreator_v#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/erikberglund/ProfileCreator/releases.atom'
  name 'ProfileCreator'
  homepage 'https://github.com/erikberglund/ProfileCreator'

  depends_on macos: '>= :sierra'

  app 'ProfileCreator.app'
end
