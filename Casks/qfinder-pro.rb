cask 'qfinder-pro' do
  version '2.3.1.0124'
  sha256 '04831a98d32b005136b22a68415a76f6666e8878f6cf6a87ad49178fa07b811c'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: 'd6d10b87a31daffa00cc61e07bfed6fd2d822331bb9d090526bb5562ea917960'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
