cask 'prowritingaid-for-safari' do
  version :latest
  sha256 :no_check

  url 'https://cdn.prowritingaid.com/browserextension/pwa-safari-extension.dmg'
  name 'ProWritingAid for Safari'
  homepage 'https://prowritingaid.com/'

  app 'ProWritingAid for Safari.app'
end
