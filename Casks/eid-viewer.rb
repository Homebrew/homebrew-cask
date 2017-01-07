cask 'eid-viewer' do
  version '4.1.19'
  sha256 'b24a4d878cd02c6c580e8ae03bd3eca222a2a34084757d62afb1f1b6f501daa3'

  url 'http://eid.belgium.be/sites/default/files/downloads/eID-Quickinstaller-4.1.19-signed.dmg', referer: 'http://eid.belgium.be/en/using_your_eid/installing_the_eid_software/mac', user_agent: :fake
  name 'eID Viewer'
  homepage 'http://eid.belgium.be/'

  pkg 'eID-Quickinstaller-signed.pkg'

  uninstall pkgutil: [
                      'be.eid.middleware',
                      'be.eid.viewer.app'
                     ]
end
