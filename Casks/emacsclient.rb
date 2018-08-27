cask 'emacsclient' do
  version :latest
  sha256 :no_check

  url 'https://github.com/sprig/org-capture-extension/raw/master/EmacsClient.app.zip'
  name 'emacsclient'
  homepage 'https://github.com/sprig/org-capture-extension'

  app 'EmacsClient.app'
end
