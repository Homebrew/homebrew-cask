cask 'stemcreator' do
  version :latest
  sha256 :no_check

  # stemsmusic.wpengine.com was verified as official when first introduced to the cask
  url 'http://stemsmusic.wpengine.com/download/stems-creator-installer-mac/'
  name 'Stem Creator'
  homepage 'http://www.stems-music.com/stem-creator-tool/'

  app 'StemCreator.app'
  artifact 'Documentation', target: Pathname.new(File.expand_path('~')).join('Library/Application Support/Native Instruments/Stem Creator/Documentation')

  zap trash: '~/Library/Application Support/Native Instruments/Stem Creator'
end
