cask 'discovercare' do
  version '1.0.3'
  sha256 '420f792c4431ada7eed8fcd09a9114aa3604750508913752574f2d9ed3c9a96e'

  url 'http://en.volkswagen.com/content/medialib/vwd4/global/discovercare/files/discovercare_macen/_jcr_content/renditions/rendition.download_attachment.file/discovercare_mac_en.zip'
  name 'Volkswagen DiscoverCare'
  homepage 'http://www.volkswagen.com/discovercare'

  container nested: "DiscoverCare_v.#{version}.dmg"

  app 'DiscoverCare.app'

  zap delete: '~/DiscoverCare'
end
