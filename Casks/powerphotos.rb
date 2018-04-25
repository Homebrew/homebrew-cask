cask 'powerphotos' do
  if MacOS.version <= :yosemite
    version '1.0.6'
    sha256 '927c1095858d259b9469c86d20ce39cf0bfc350ad0b64ae8ba0ca0557b632305'
    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  elsif MacOS.version <= :el_capitan
    version '1.2.3'
    sha256 'b07eb9f8801fb397d55e3dd7e0569dbef5d3265debaf3ee68247062901d93fcb'
    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  else
    version '1.4.0'
    sha256 '597ab394978d9459cdeb560fc6dbcbade53cd721c4ef65a308792de71b0cc321'
    url 'https://www.fatcatsoftware.com/powerphotos/PowerPhotos.zip'
  end

  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: '06762e86aede5fafc48a620feacd2aad9f141a967d718c90a8dabe30d376b050'
  name 'PowerPhotos'
  homepage 'https://www.fatcatsoftware.com/powerphotos/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
