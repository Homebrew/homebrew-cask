cask :v1 => 'pocketcasts' do
  version '1.0'
  sha256 'fe191ceb3a7157bee5a589bed248464587526ddbaeacab122960a4144d1c87da'

  url 'https://github.com/mortenjust/PocketCastsOSX/releases/download/1.0/PocketCastsOSX1.0.zip'
  name 'PocketCastsOSX'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'
  license :oss

  app 'PocketCasts.app'
end