cask 'profilecreator' do
  version '0.2.4-beta.9'
  sha256 '9771e17d54df6510b00f06e17f87b8d381894eb7f6dd082bf870819950200976'

  url "https://github.com/erikberglund/ProfileCreator/releases/download/v#{version}/ProfileCreator_v#{version}.dmg"
  appcast 'https://github.com/erikberglund/ProfileCreator/releases.atom'
  name 'ProfileCreator'
  homepage 'https://github.com/erikberglund/ProfileCreator'

  depends_on macos: '>= :sierra'

  app 'ProfileCreator.app'
end
