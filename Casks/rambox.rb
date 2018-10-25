cask 'rambox' do
  version '0.6.2'
  sha256 'f83028d7875636aef457c9e5254846f84276551edaf74f6d283d846c5c2544c8'

  # github.com/ramboxapp/community-edition was verified as official when first introduced to the cask
  url "https://github.com/ramboxapp/community-edition/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/ramboxapp/community-edition/releases.atom'
  name 'Rambox'
  homepage 'https://rambox.pro/'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'
end
