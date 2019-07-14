cask 'jd-gui' do
  version '1.6.3'
  sha256 'ce9a7fbdf52f207f6289935a0fd72f5851f764874f9bec97135d42b088beb59b'

  # github.com/java-decompiler/jd-gui was verified as official when first introduced to the cask
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
