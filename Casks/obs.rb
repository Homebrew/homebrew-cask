cask :v1 => 'obs' do
  version '0.8.3'
  sha256 '5113ce6ed97a424b7d351012dc3a429483a09f070838cd5064426dcdb44e35ef'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  homepage 'http://obsproject.com/'
  license :gpl

  pkg "OBS.mpkg"

  uninstall :pkgutil => 'org.obsproject.pkg.obs-studio'
end
