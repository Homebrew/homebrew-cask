cask 'mamp' do
  version '3.5.2'
  sha256 'b935d118b6e14d43cf2570be2a05166a15b824c3edc0ede98cc30e6ab5af3697'

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  name 'MAMP'
  homepage 'https://www.mamp.info/'
  license :freemium

  pkg "MAMP_MAMP_PRO_#{version}.pkg"

  postflight do
    set_ownership ['/Applications/MAMP', '/Applications/MAMP PRO']
  end

  uninstall pkgutil: 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg',
            delete:  [
                       '/Applications/MAMP',
                       '/Applications/MAMP PRO',
                     ]
end
