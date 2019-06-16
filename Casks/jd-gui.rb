cask 'jd-gui' do
  version '1.6.0'
  sha256 'd8288b16136cb57ca02e60b5d867d27b0beaa09451d339b0bf666a18cf0b3f89'

  # github.com/java-decompiler/jd-gui was verified as official when first introduced to the cask
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
