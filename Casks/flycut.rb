cask 'flycut' do
  version '1.5'
  sha256 '0a0d3d91194ba8f4e53a9ad004452cb7b0bc5541322f849a203a75720f875908'

  url "https://github.com/downloads/TermiT/Flycut/flycut#{version}.pkg"
  name 'Flycut'
  homepage 'https://github.com/TermiT/Flycut'
  license :mit

  pkg "flycut#{version}.pkg", allow_untrusted: true

  uninstall pkgutil: 'com.generalarcade.flycut'
end
