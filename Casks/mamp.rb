cask 'mamp' do
  version '4.4.1'
  sha256 '5eab5e3bcca0e7c9641d4cf21c7ee4a5698fa0c2ed7980cdb6a728de7857084b'

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  name 'MAMP'
  homepage 'https://www.mamp.info/'

  depends_on macos: '>= :yosemite'

  pkg "MAMP_MAMP_PRO_#{version}.pkg"

  postflight do
    set_ownership ['/Applications/MAMP', '/Applications/MAMP PRO']
  end

  uninstall pkgutil: 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg'
end
