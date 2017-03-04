cask 'netspot' do
  version '2.5.740'
  sha256 'ae37fa90752e0831775efe2e6b249fdc802903aa922c3e4373ce9888e01cfbe5'

  url 'https://www.netspotapp.com/download/NetSpot.dmg'
  appcast "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml",
          checkpoint: '200a3c01b199c3455c6632b7e1b014964a1d67474f79b8da773bd01ad74d9f94'
  name 'NetSpot'
  homepage 'https://www.netspotapp.com/'

  app 'NetSpot.app'
end
