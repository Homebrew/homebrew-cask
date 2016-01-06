cask 'alternote' do
  version '1.0.9_1009'
  sha256 'bfd8e20852d86a5a7d70c833659a3168662f58e0007be031d60ac751157b428e'

  url "http://alternoteapp.com/assets/downloads/Alternote#{version.sub(%r{.*_}, '')}.zip"
  appcast 'http://alternoteapp.com/assets/appcast.xml',
          :sha256 => 'ca7282850afa4d93a57d5dd26656a78c5e948f1c415d046a0361b29f4c96b934'
  name 'Alternote'
  homepage 'http://alternoteapp.com/'
  license :commercial

  app 'Alternote.app'

  uninstall :quit => 'com.Alternote'
end
