cask 'resolutionator' do
  version '1.1.1'
  sha256 'b4e0ba696aeee124c8d701371af71c4d1702fe0333fb955e3e5492d10f6ef679'

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/resolutionator/appcast',
          checkpoint: 'e3bb2ac06a8762d3b746b16e68e6d762a5b7d175bb64be260831246b742e8962'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Resolutionator.app'
end
