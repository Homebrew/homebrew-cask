cask 'mamp' do
  version '5.6'
  sha256 '0b5f8157d2a6f4cef39d3cf89563bab6503d2d1087f436f8ca9ee33731293453'

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
