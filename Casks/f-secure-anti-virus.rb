cask 'f-secure-anti-virus' do
  version :latest
  sha256 :no_check

  url 'https://download.sp.f-secure.com/SE/Retail/installer/F-Secure-Anti-Virus-for-Mac.mpkg'
  name 'F-Secure Anti-Virus'
  homepage 'https://www.f-secure.com/en/web/home_global/anti-virus'

  pkg 'F-Secure-Anti-Virus-for-Mac.mpkg'

  uninstall script:  {
                       executable: '/usr/local/f-secure/bin/uninstall_MacProtection',
                       sudo:       true,
                     },
            pkgutil: 'com.f-secure.*'

  caveats do
    reboot
  end
end
