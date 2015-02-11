cask :v1 => 'obs' do
  version '0.8.1'
  sha256 '42ca5408e01243797574a9538db200558094989e210b6538fae13ea029c9a51f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  homepage 'http://obsproject.com/'
  license :gpl

  pkg "OBS.mpkg"

  uninstall :pkgutil => 'org.obsproject.pkg.obs-studio'
end
