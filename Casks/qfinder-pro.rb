cask 'qfinder-pro' do
  version '7.3.2.0706'
  sha256 '6e8f119dee58677da0802b23fcf1f92aad831c719c73343f47f9f2f5eb6ea26f'

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://update.qnap.com/SoftwareRelease.xml&splitter_1=Mac_for_QT&index_1=1&splitter_2=downloadURL&index_2=1'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: [
                       'qnap.com.qfinder.*',
                       'qnap.com.Qfinder',
                     ],
            delete:  [
                       '/Applications/Qfinder Pro.app',
                       '/Applications/Qfinder Pro.app/Contents/Resources/Qfinder Pro.app',
                     ]
end
