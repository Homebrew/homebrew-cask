cask 'mamp' do
  version '5.5'
  sha256 'eebddf558ba956357fb6e628f13ab7bc296de3202b2382d4cbf5868aadb45ded'

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
