cask 'anonymousvpn' do
  version :latest
  sha256 :no_check

  url 'https://dl.anonymousvpn.org/AnonymousVPN.pkg'
  name 'Anonymous VPN'
  homepage 'https://www.anonymousvpn.org/'

  pkg 'AnonymousVPN.pkg'

  uninstall pkgutil: 'org.anonymousvpn.pkg'
end
