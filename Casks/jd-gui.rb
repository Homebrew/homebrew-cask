cask :v1 => 'jd-gui' do
  version '1.2.0'
  sha256 '4458b81a10a7169ced8d174addf918c7879e0e60976dc630e58f43fb68a2dc00'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'
  license :gpl

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
