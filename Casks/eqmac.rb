cask 'eqmac' do
  version '2.0.0beta3'
  sha256 '892bfb439f4ee4fdb009ce4b1d802d997e0675976cc8c8434506d95b994acdc4'

  url "http://eqmac.hulse.id.au/sites/default/files/downloads/EQMac-#{version}.zip"
  name 'EQMac'
  homepage 'http://eqmac.hulse.id.au/'

  app "EQMac-#{version}.app"
end
