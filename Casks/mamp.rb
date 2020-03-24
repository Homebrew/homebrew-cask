cask 'mamp' do
  version '5.7'
  sha256 'af75ba30ccb079e8abc3da67c4619b08fda97db474ead1d1a664e4584991cd77'

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  appcast 'https://www.mamp.info/en/downloads/'
  name 'MAMP'
  homepage 'https://www.mamp.info/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  pkg "MAMP_MAMP_PRO_#{version}.pkg"

  postflight do
    set_ownership ['/Applications/MAMP', '/Applications/MAMP PRO']
  end

  uninstall pkgutil: 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg'
end
