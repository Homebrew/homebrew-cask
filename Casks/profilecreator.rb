cask 'profilecreator' do
  version '0.2.5-beta.10'
  sha256 'b493fe7597ce6df0d95b22420a630dba920459e9fec8f95062cfb961555da640'

  url "https://github.com/erikberglund/ProfileCreator/releases/download/v#{version}/ProfileCreator_v#{version}.dmg"
  appcast 'https://github.com/erikberglund/ProfileCreator/releases.atom'
  name 'ProfileCreator'
  homepage 'https://github.com/erikberglund/ProfileCreator'

  depends_on macos: '>= :sierra'

  app 'ProfileCreator.app'
end
