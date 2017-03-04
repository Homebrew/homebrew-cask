cask 'linphone' do
  version '3.10.2'
  sha256 '5e88df179c1a238b229a4b334f6c1a94ec0a2cf9dbb62c8328f05ebab93c6eef'

  url "https://www.linphone.org/releases/macosx/linphone-#{version}.pkg"
  appcast 'https://github.com/BelledonneCommunications/linphone/releases.atom',
          checkpoint: 'cd2cb1b2738546c49e84067fcb58231e2e7ab3bfd510edbd9a87b0adb849d02f'
  name 'Linphone'
  homepage 'https://www.linphone.org/'

  pkg "linphone-#{version}.pkg"

  uninstall pkgutil: 'org.linphone.linphone'
end
