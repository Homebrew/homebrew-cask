cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.0.4'
  sha256 '0cb3dc26a47ea7f76ac43156ff1c88163726c13154d695b254161a91ce948ad6'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '6f840c00431993ab1151c01facfd8d4dfbb13a94589657a6cb5d72505db3f448'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
