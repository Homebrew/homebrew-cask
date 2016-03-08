cask 'packages' do
  version '1.1.3'
  sha256 'fb9baad763db3a1767b047ab7b634ae764f22e94f0e8285d143d9c34e72c1672'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'
  license :bsd

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
