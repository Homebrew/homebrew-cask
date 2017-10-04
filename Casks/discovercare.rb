cask 'discovercare' do
  version '1.0.4'

  language 'en', default: true do
    sha256 '4f536f7e1c92787ee8a750fd4245c1d64c163807fb683ea8a59427aac57c18af'
    'en'
  end

  language 'de' do
    sha256 '1368c12cd3fa8fd0baef6cbcb9d130205778c4d249498422737b854b41b8f996'
    'de'
  end

  url "http://en.volkswagen.com/content/medialib/vwd4/global/discovercare/files/discovercare_mac#{language}/_jcr_content/renditions/rendition.download_attachment.file/discovercare_mac_#{language}.zip"
  name 'Volkswagen DiscoverCare'
  homepage 'http://www.volkswagen.com/discovercare'

  container nested: "DiscoverCare_v.#{version}.dmg"

  app 'DiscoverCare.app'

  zap trash: '~/DiscoverCare'
end
