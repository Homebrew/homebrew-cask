cask 'linphone' do
  version '3.9.1'
  sha256 '0f45bb9cc2d2ea32631c0e8dedc28b2139d5cb0d55a007704c133b2ef41ffbe2'

  url "https://www.linphone.org/releases/macosx/linphone-#{version}.pkg"
  name 'Linphone'
  homepage 'https://www.linphone.org/'
  license :gpl

  pkg "linphone-#{version}.pkg"

  uninstall pkgutil: 'org.linphone.linphone'
end
