cask 'qfinder-pro' do
  version '7.1.1.0527'
  sha256 '47f0d0236c6ee37dde6b4fba889d879341d523460100a3b82489d0eb427ff223'

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://update.qnap.com/SoftwareRelease.xml&splitter_1=Mac_for_QT&index_1=1&splitter_2=downloadURL&index_2=1'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: [
                       'qnap.com.qfinder.*',
                       'qnap.com.Qfinder',
                     ]
end
