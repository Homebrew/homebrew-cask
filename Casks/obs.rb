cask :v1 => 'obs' do
  version '0.6.2'
  sha256 '871b73509008c3df1c3ba005ff290395d19e494266571fc0f7b14d73f813d605'

  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  homepage 'http://obsproject.com/'
  license :oss

  pkg "OBS Studio.mpkg"

  uninstall :pkgutil => 'org.obsproject.pkg.obs-studio'
end
