cask 'profilecreator' do
  version '0.3.1,201905222119-beta'
  sha256 '820311b25535b52d3e2bb631d6adae904d2e9d3c46fda56798be28c7742b4878'

  url "https://github.com/erikberglund/ProfileCreator/releases/download/v#{version.before_comma}/ProfileCreator_v#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/erikberglund/ProfileCreator/releases.atom'
  name 'ProfileCreator'
  homepage 'https://github.com/erikberglund/ProfileCreator'

  depends_on macos: '>= :sierra'

  app 'ProfileCreator.app'
end
