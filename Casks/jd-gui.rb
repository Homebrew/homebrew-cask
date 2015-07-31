cask :v1 => 'jd-gui' do
  version '1.3.0'
  sha256 'f8c0f0a44ce699e50e71f0de31dc623efcdffc2882f6497fb8c7ea33a43958f0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'
  license :gpl

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
