cask :v1 => 'freesmug-chromium' do
  version '43.0.2357.124'
  sha256 'f3ded99268dad92c17f9c3d1ec2b0c82e3d8f27ec33e1881f3aafa9d3a0a5f83'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
