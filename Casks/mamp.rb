cask 'mamp' do
  version '4.0.6'
  sha256 '04aeec3c6a89c998000e86446859a3233f30cec6716fdcad0d9c57c35a4afe66'

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
