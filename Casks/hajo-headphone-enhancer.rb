cask 'hajo-headphone-enhancer' do
  version '1.7.3'
  sha256 '4d4e986621d493e6a994333cfb3acad223cd80bf262287ea197ac01eb464c501'

  url 'http://hajoheadphone.com/assets/install-hajo-headphone-enhancer.dmg'
  name 'Hajos Headphone Enhancer'
  homepage 'http://hajoheadphone.com/install-remove-hajos-headphone-enhancer'

  pkg 'Install Hajo Headphone Enhancer.pkg'

  uninstall pkgutil: 'me.hajo.HaHE.Install.App'
end
