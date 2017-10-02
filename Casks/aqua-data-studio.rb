cask 'aqua-data-studio' do
  version '18.0.19'
  sha256 '873ad0fb9783f277638bfbce35541ef55ae8bafbecbbe84c99cf04c99e39c04e'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: '1add5c4b11ef92db0cb739b3048181c9403a94d80459efd14cdafe180dc187a7'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
