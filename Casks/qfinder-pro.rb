cask 'qfinder-pro' do
  version '2.5.0.1228'
  sha256 'b31c60368c95e82c5f1e4d604bce3bdaa7cc7330a9058f712192d8bf114e318a'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: 'fc69d5d12b4c7ff159272f6cf44cadfe4788bb1480b1e5672d47bdd6699c6911'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
