cask 'rambox' do
  version '0.5.3'
  sha256 '17b70119483ca85a274fdceacfaf1284e2e069a3dd17683f160f54861f2b8ff1'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'e4787ac17d9f63f29a2ec2646b7819e0b154116bd3e248df43f18fb8e008f640'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
