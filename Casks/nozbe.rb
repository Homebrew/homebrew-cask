cask 'nozbe' do
  version '3.4.2'
  sha256 'c0bc0c848c686510bab619c8330725ef1105cdf1e264b513720633aa447a50e8'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
