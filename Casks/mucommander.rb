cask 'mucommander' do
  version '0.9.0'
  sha256 '24665a248bd0f027b399277c2e7096a57e75120048302f3ac2f89ce4f7f1acae'

  url "https://github.com/mucommander/mucommander/releases/download/{version}/mucommander-#{version.dots_to_underscores}.dmg"
  name 'muCommander'
  homepage 'http://www.mucommander.com/'
  license :gpl

  app 'muCommander.app'
end
