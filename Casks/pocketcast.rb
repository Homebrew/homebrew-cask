cask :v1 => 'pocketcast' do
  version '1.2.1'
  sha256 '09837af1105cbb37ef3c74cdc0c000385686777d86c20f2601e49832d553713c'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCast#{version}.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PocketCast.app'
end
