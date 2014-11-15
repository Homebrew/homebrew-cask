cask :v1 => 'mucommander' do
  version '0.9.0'
  sha256 '24665a248bd0f027b399277c2e7096a57e75120048302f3ac2f89ce4f7f1acae'

  url "http://www.mucommander.com/download/mucommander-#{version.gsub('.','_')}.dmg"
  homepage 'http://www.mucommander.com/index.php'
  license :unknown

  app 'muCommander.app'
end
