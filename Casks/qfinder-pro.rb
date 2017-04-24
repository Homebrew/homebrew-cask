cask 'qfinder-pro' do
  version '2.4.1.0328'
  sha256 '1efdc25912281e71fd4cbfbb0646b7492659741022494e9405a8ae504d962b25'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: '6c9a8e8468c537a19ad9c60d92f702045af614022fde70334c9692da11587362'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
