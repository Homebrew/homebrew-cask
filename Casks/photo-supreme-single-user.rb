cask :v1 => 'photo-supreme-single-user' do
  version '3'
  sha256 'b2a60379e61ac6a44ac14b05e462a145ad65d5606e78c0cb4d46bd1fae1cc37c'

  url 'http://www.idimager.com/Trial/PhotoSupreme_V3.pkg'
  name 'Photo Supreme Single User'
  homepage 'http://www.idimager.com/WP/?page_id=20'
  license :commercial

  pkg 'PhotoSupreme_V3.pkg'

  uninstall :pkgutil => 'com.idimager.idimagersu'
end
