cask 'onionshare' do
  version '1.1'
  sha256 'a9a377590a09c98e821b15c20f9ddd34a13c83b4d8a85e966a0ec4adc31bca52'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: '0dc406cac580f0440817a9c45ad3c039702f8b9740d56abbda86bfe0fbf31bae'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig",
      key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'org.pythonmac.unspecified.OnionShare'
end
