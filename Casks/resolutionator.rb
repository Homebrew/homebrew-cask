cask 'resolutionator' do
  version '1.1.1'
  sha256 'b4e0ba696aeee124c8d701371af71c4d1702fe0333fb955e3e5492d10f6ef679'

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/resolutionator/appcast'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Resolutionator.app'
end
