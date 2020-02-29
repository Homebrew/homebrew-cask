cask 'aqua-data-studio' do
  version '20.5.0-2'
  sha256 '637d54ab94d0dc2f67cf3db83c9ee743b10365322b1e39f1660b0afdc6a01c71'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'https://www.aquafold.com/aquadatastudio_downloads'
  name 'Aquafold Aqua Data Studio'
  homepage 'https://www.aquafold.com/aquadatastudio'

  app 'Aqua Data Studio.app'
end
