cask 'anonymousvpn' do
  version :latest
  sha256 :no_check

  url 'http://dl.anonymousvpn.org/AnonymousVPN.pkg'
  name 'Anonymous VPN'
  homepage 'https://www.anonymousvpn.org/'
  license :gratis

  pkg 'AnonymousVPN.pkg'

  uninstall pkgutil: 'org.anonymousvpn.pkg'
end
