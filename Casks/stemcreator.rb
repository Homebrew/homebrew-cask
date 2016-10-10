cask 'stemcreator' do
  version :latest
  sha256 :no_check

  url 'http://stems-music.com/downloads/StemCreator_Installer.dmg'
  name 'Stem Creator'
  homepage 'http://stems-music.com/stem-creator-tool'

  app 'StemCreator.app'
  artifact 'Documentation', target: Pathname.new(File.expand_path('~')).join('Library/Application Support/Native Instruments/Stem Creator/Documentation')

  zap delete: '~/Library/Application Support/Native Instruments/Stem Creator'
end
