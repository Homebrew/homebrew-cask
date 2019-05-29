cask 'jd-gui' do
  version '1.5.1'
  sha256 '6f1c8148167dc8bfb51271191b2dc2d4ae3b701302e0b105e600b67d06a8add1'

  # github.com/java-decompiler/jd-gui was verified as official when first introduced to the cask
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
