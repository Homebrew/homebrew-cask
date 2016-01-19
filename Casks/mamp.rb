cask 'mamp' do
  version '3.5'
  sha256 '9961cc2a96cb23388a64e48e0bda7a2d5c4d555c16801e15571f548b185438d9'

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
