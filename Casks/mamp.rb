cask 'mamp' do
  version '5.4'
  sha256 'dcb1f34de2c0c6d201f95198c38df1536c32d14713cc6dc0f4212eab93302e90'

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
