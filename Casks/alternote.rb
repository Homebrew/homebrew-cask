cask 'alternote' do
  version '1.0.9_1009'
  sha256 'bfd8e20852d86a5a7d70c833659a3168662f58e0007be031d60ac751157b428e'

  url "http://alternoteapp.com/assets/downloads/Alternote#{version.sub(%r{.*_}, '')}.zip"
  appcast 'http://alternoteapp.com/assets/appcast.xml',
          checkpoint: '0d5cf38032fb44cb02d4fa5cf2d30b5853cfa0568cbdd66e2d1dd3f590d419f7'
  name 'Alternote'
  homepage 'http://alternoteapp.com/'
  license :commercial

  app 'Alternote.app'

  uninstall quit: 'com.Alternote'
end
