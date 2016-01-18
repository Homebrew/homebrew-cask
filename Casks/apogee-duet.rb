cask 'apogee-duet' do
  version 'June_2015'
  sha256 '441302c1931ee474e36172dd87ad9b26781a96b3b7ad8e18abe587bebad17ce3'

  url "http://www.apogeedigital.com/drivers/Duet_#{version}.dmg"
  name 'Apogee Duet'
  homepage 'http://www.apogeedigital.com/support/software-downloads#tab-id-8'
  license :gratis

  depends_on macos: '>= :mavericks'

  pkg 'Duet.pkg'

  uninstall pkgutil: 'com.apogee.pkg.*'

  caveats do
    reboot
  end
end
