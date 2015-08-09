cask :v1 => 'aos-firewall' do
  version :latest
  sha256 :no_check

  url 'http://ahnlabdownload.nefficient.co.kr/aos/sup/aosfirewall.dmg'
  name 'AOS Firewall'
  homepage 'http://www.ahnlab.com'
  license :gratis

  pkg 'AOSFirewall.pkg'

  uninstall :pkgutil => [
                         'com.ahnlab.aosFirewall.*',
                         'com.ahnlab.firewall.*'
                        ]
end
