cask 'linphone' do
  version '3.10.2'
  sha256 '5e88df179c1a238b229a4b334f6c1a94ec0a2cf9dbb62c8328f05ebab93c6eef'

  url "https://www.linphone.org/releases/macosx/linphone-#{version}.pkg"
  name 'Linphone'
  homepage 'https://www.linphone.org/'

  pkg "linphone-#{version}.pkg"

  uninstall pkgutil: 'org.linphone.linphone'
end
