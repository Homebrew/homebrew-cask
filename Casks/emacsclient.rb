cask 'emacsclient' do
  version '1.0'
  sha256 '865c5779d37ee750abf75f8f57f4b2ad7532337b04e9be660a7644d2cd5aa6e4'

  url 'https://github.com/sprig/org-capture-extension/raw/master/EmacsClient.app.zip'
  name 'emacsclient'
  homepage 'https://github.com/sprig/org-capture-extension'

  app 'EmacsClient.app'
end
