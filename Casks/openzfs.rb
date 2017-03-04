cask 'openzfs' do
  version '1.6.1,f8'
  sha256 '126ce9215ec060b2eb60db0609b29acad334f0d1c30c5ef2ab97cb251f374c39'

  url "https://openzfsonosx.org/w/images/#{version.after_comma[0]}/#{version.after_comma}/OpenZFS_on_OS_X_#{version.before_comma}.dmg"
  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org/'

  depends_on macos: '>= :mountain_lion'

  if MacOS.version == :mountain_lion
    pkg "OpenZFS on OS X #{version.before_comma} Mountain Lion.pkg"
  elsif MacOS.version == :mavericks
    pkg "OpenZFS on OS X #{version.before_comma} Mavericks.pkg"
  elsif MacOS.version == :yosemite
    pkg "OpenZFS on OS X #{version.before_comma} Yosemite.pkg"
  elsif MacOS.version == :el_capitan
    pkg "OpenZFS on OS X #{version.before_comma} El Capitan.pkg"
  elsif MacOS.version >= :sierra
    pkg "OpenZFS on OS X #{version.before_comma} Sierra.pkg"
  end

  uninstall pkgutil: 'net.lundman.openzfs.*'
end
