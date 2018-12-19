cask 'newmoon' do
  version '28.2.1,1mW5zlk_1jR81VnlHKPzNA4MYYbOz13MN'
  sha256 'f48ade0855a24eae7e7e3b7df09d42932f84ed872a15765882a9681c70dd7f28'

  # drive.google.com/uc was verified as official when first introduced to the cask
  url "https://drive.google.com/uc?export=download&id=#{version.after_comma}"
  name 'Pale Moon'
  homepage 'https://www.palemoon.org/'

  app 'NewMoon.app'
end
