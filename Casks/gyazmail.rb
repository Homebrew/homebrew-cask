cask :v1 => 'gyazmail' do
  version '1.5.16'
  sha256 'fe15be1217dea0fa1eac39dd92be29073723b64b29fefa34ee9cdd3754725a4d'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.gsub('.','')}.dmg"
  homepage 'http://gyazsquare.com/gyazmail/'
  license :commercial

  app 'GyazMail.app'
end
