cask 'jd-gui' do
  version '1.6.2'
  sha256 'd034481f7c21ed0c17f04b87a4d886a3a28c0e0bca46e01b864a7afd119947ae'

  # github.com/java-decompiler/jd-gui was verified as official when first introduced to the cask
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
