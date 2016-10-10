cask 'mucommander' do
  version '0.9.0'
  sha256 '24665a248bd0f027b399277c2e7096a57e75120048302f3ac2f89ce4f7f1acae'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom',
          checkpoint: '8bd765c3f40255e49f6434a7a768cc459a4010ab73ed51c408868789576c1f37'
  name 'muCommander'
  homepage 'http://www.mucommander.com/'

  app 'muCommander.app'
end
