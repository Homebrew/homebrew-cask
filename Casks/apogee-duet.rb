cask 'apogee-duet' do
  version 'June_2015'
  sha256 '8873b43fbf8b354ba5adebaf8ce79eb0bb572c90ac86950c39b42d8f504649e3'

  url "https://www.apogeedigital.com/drivers/Duet_#{version}.dmg"
  name 'Apogee Duet'
  homepage 'http://www.apogeedigital.com/support/software-downloads#tab-id-8'

  depends_on macos: '>= :mavericks'

  pkg 'Duet Software Installer.pkg'

  uninstall pkgutil: 'com.apogee.pkg.*'

  caveats do
    reboot
  end
end
