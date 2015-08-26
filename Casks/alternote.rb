cask :v1 => 'alternote' do
  version '1.0.5_1005'
  sha256 'f507742ca0a1cd4a6239bbf5096e62ed8960e575d9ff5be82c2645951f9bb1b5'

  url "http://alternoteapp.com/assets/downloads/Alternote#{version.sub(%r{.*_},'')}.zip"
  appcast 'http://alternoteapp.com/assets/appcast.xml',
          :sha256 => '0cbfc55527716eeab37a3cd8b2ce4fcb91209fdb4a6ecc238a4a44046ce6bfd4'
  name 'Alternote'
  homepage 'http://alternoteapp.com/'
  license :commercial

  app 'Alternote.app'

  uninstall :quit => 'com.Alternote'
end
