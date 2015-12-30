cask 'pocketcast' do
  version '1.2.2'
  sha256 'e24dd60e04fa7258522e62cf871c241e55685ed03ff76057f5c2926cf848151d'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCast#{version}.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom',
          :sha256 => 'ee704890c820b78f10af822f5a0824af3f308124e6836deddcfbe680ee9680a5'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PocketCast.app'
end
