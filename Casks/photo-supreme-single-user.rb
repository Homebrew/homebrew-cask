cask 'photo-supreme-single-user' do
  version '4.2'
  sha256 'ec63937b0abccd8a5647f47c366782a8532d6d02a945077cfb4a95adf74215a7'

  url "http://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
