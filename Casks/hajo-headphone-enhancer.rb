cask 'hajo-headphone-enhancer' do
  version :latest
  sha256 :no_check

  url 'http://hajoheadphone.com/assets/install-hajo-headphone-enhancer.dmg'
  name 'Hajos Headphone Enhancer'
  homepage 'http://hajoheadphone.com/install-remove-hajos-headphone-enhancer'

  pkg 'Install Hajo Headphone Enhancer.pkg'

  uninstall pkgutil: 'me.hajo.HaHE.Install.App'
end
