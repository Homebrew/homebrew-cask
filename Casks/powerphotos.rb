cask 'powerphotos' do
  version '1.1.7'
  sha256 '95902346969980edbdcb86eed5a1d1d941ed06b0832be110ba379be4be6ce875'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: '325d747ae74d84dc2c6b48771d36d52983fd5205c6c778342e877b27ca1033f7'
  name 'PowerPhotos'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
