cask :v1 => 'pocketcasts' do
  version '1.2'
  sha256 '385456a2d23cf5fcf88007dcfc97bbe8d9f7019e1ac7f57f1c0c676fe7f2df03'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCasts#{version}.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PocketCasts.app'
end
