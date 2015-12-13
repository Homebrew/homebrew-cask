cask :v1 => 'gateblu' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-2.amazonaws.com/gateblu/gateblu-ui/latest/Gateblu.dmg'
  name 'Gateblu'
  homepage 'https://gateblu.octoblu.com'
  license :mit

  pkg 'Gateblu Installer.pkg'

  uninstall :pkgutil => 'com.octoblu.*',
            :delete => '/Applications/Gateblu.app'
end
