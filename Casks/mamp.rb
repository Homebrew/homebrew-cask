cask 'mamp' do
  version '4.0.5'
  sha256 'f3e566a509a1d2375cbc67c9b5486767ac07ab9687f2134b06db107710b6e813'

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  name 'MAMP'
  homepage 'https://www.mamp.info/'

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
