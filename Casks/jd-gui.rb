cask 'jd-gui' do
  version '1.5.2'
  sha256 'd32f94733bf956ef5348600221a211ca45caebb6856a1fa4bb01bd6686528e93'

  # github.com/java-decompiler/jd-gui was verified as official when first introduced to the cask
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
