cask 'rainlendar-pro' do
  version '2.14.2'
  sha256 'ad23714e3bdad978d5449239281be7e109528c8bec53c6a0adfd45054f2bcc84'

  url "https://www.rainlendar.net/download/Rainlendar-Pro-#{version}.dmg"
  name 'Rainlendar Pro'
  homepage 'https://www.rainlendar.net/'

  app "Rainlendar#{version.major}-Pro.app"
end
