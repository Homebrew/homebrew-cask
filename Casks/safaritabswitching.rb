cask :v1 => 'safaritabswitching' do
  version '1.2.7'
  sha256 'cda2d24dd7f273d5e26bf3ee32c1e711ebf28c0c44c619fa9f4e7f8efea488ca'

  url "https://github.com/rs/SafariTabSwitching/releases/download/#{version}/Safari.Tab.Switching-#{version}.zip"
  homepage 'https://github.com/rs/SafariTabSwitching'
  license :oss

  pkg "Safari Tab Switching-#{version}.pkg"

  uninstall :pkgutil => 'net.rhapsodyk.SafariTabSwitching.pkg'
end
