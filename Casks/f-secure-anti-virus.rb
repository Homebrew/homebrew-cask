cask 'f-secure-anti-virus' do
  version ':latest'
  sha256 'bd22b8841b8ebbc178936afbf9a6c6668750e1cfc313500419fe4d7b5960542c'

  url 'https://download.sp.f-secure.com/SE/Retail/installer/F-Secure-Anti-Virus-for-Mac.mpkg'
  name 'F-Secure Anti-Virus'
  homepage 'https://www.f-secure.com/en/web/home_global/anti-virus'

  pkg 'F-Secure-Anti-Virus-for-Mac.mpkg'

  uninstall script: '/usr/local/f-secure/bin/uninstall_MacProtection'

  caveats do
    reboot
  end
end
