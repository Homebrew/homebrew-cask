cask 'alternote' do
  version '1.0.9_1009'
  sha256 'bfd8e20852d86a5a7d70c833659a3168662f58e0007be031d60ac751157b428e'

  url "http://alternoteapp.com/assets/downloads/Alternote#{version.sub(%r{.*_}, '')}.zip"
  appcast 'http://alternoteapp.com/assets/appcast.xml',
          :sha256 => 'a0dae1f2ae1022036c3b4f4b0000ffd84e7a75ebc9a9db3f48b20eda8ffcbef3'
  name 'Alternote'
  homepage 'http://alternoteapp.com/'
  license :commercial

  app 'Alternote.app'

  uninstall :quit => 'com.Alternote'
end
