cask 'discovercare' do
  version '1.0.4'
  sha256 '4f536f7e1c92787ee8a750fd4245c1d64c163807fb683ea8a59427aac57c18af'

  url 'http://en.volkswagen.com/content/medialib/vwd4/global/discovercare/files/discovercare_macen/_jcr_content/renditions/rendition.download_attachment.file/discovercare_mac_en.zip'
  name 'Volkswagen DiscoverCare'
  homepage 'http://www.volkswagen.com/discovercare'

  container nested: "DiscoverCare_v.#{version}.dmg"

  app 'DiscoverCare.app'

  zap trash: '~/DiscoverCare'
end
