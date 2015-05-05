cask :v1 => 'pocketcasts' do
  version '1.0'
  sha256 'fe191ceb3a7157bee5a589bed248464587526ddbaeacab122960a4144d1c87da'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCastsOSX#{version}.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PocketCasts.app'
end
