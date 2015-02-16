cask :v1 => 'obs' do
  version '0.8.2'
  sha256 '7ff29341c6517a3c327309ca27c80f4f443c2a5cea110a4b4fdf8e2ec9bcbb2c'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  homepage 'http://obsproject.com/'
  license :gpl

  pkg "OBS.mpkg"

  uninstall :pkgutil => 'org.obsproject.pkg.obs-studio'
end
