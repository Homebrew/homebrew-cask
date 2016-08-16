cask 'nozbe' do
  version '3.1.0'
  sha256 '8bd417bd8df1684a4e72af2787ab8586659ec73100582cb3360a420f2f4deaba'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com'
  license :freemium

  app 'Nozbe.app'
end
