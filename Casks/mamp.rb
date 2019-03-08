cask 'mamp' do
  version '5.3'
  sha256 '6ef0d21c06a850fd688867a33d949f0d15a32b40231205c2bd0871f5b0681722'

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  appcast 'https://www.mamp.info/en/downloads/'
  name 'MAMP'
  homepage 'https://www.mamp.info/'

  depends_on macos: '>= :yosemite'

  pkg "MAMP_MAMP_PRO_#{version}.pkg"

  postflight do
    set_ownership ['/Applications/MAMP', '/Applications/MAMP PRO']
  end

  uninstall pkgutil: 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg'
end
