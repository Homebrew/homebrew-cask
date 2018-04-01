cask 'jxplorer' do
  version '3.3.1.2'
  sha256 '4a51114e4bb54bd1fa7704f826d3b67cc2d50e6a64303c549595275c5bb49f0d'

  # sourceforge.net/jxplorer was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jxplorer/jxplorer/version%20#{version}/jxplorer-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/jxplorer/rss?path=/jxplorer',
          checkpoint: '188e113fcfe201892108e911775fa31ad6561faca18f42297fb98c5d9b298159'
  name 'JXplorer'
  homepage 'http://jxplorer.org/'

  app "jxplorer-#{version}.app"

  postflight do
    set_permissions "#{appdir}/jxplorer-#{version}.app/Contents/MacOS/jxplorer", 'a+x'
  end
end
