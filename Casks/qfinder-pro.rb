cask 'qfinder-pro' do
  version '2.4.1.0328'
  sha256 '1efdc25912281e71fd4cbfbb0646b7492659741022494e9405a8ae504d962b25'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: '8ab6972e9275ff089a556cae3207aa2582055a01d128955fa6002dbe3767d7ee'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
