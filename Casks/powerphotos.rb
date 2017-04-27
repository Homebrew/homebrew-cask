cask 'powerphotos' do
  version '1.2.3'
  sha256 'b07eb9f8801fb397d55e3dd7e0569dbef5d3265debaf3ee68247062901d93fcb'

  # s3.amazonaws.com/fatcatsoftware/powerphotos was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: 'de0223b548bbf05509395979a516b4ac8e6dc168332fc1a81eb454eb90241ebe'
  name 'PowerPhotos'
  homepage 'https://www.fatcatsoftware.com/powerphotos/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
