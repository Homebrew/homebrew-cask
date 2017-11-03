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
    version '1.3.2'
    sha256 '92c368a9ba1d60af82242d946a9166fc8e399463a686ee58ee69af296d74db4f'
    url 'https://www.fatcatsoftware.com/powerphotos/PowerPhotos.zip'
  end

  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: 'c354ca71424e31df598b4f27a75361be9ce06001aa5f752bea51c0e6fbea60dd'
  name 'PowerPhotos'
  homepage 'https://www.fatcatsoftware.com/powerphotos/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
