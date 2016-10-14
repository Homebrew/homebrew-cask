cask 'nozbe' do
  version '3.3.0'
  sha256 '34b16fc5106b7d085749cdb30d7efd0712440a51c84a894569bfe11955b18d61'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com'

  app 'Nozbe.app'
end
