cask 'codespace' do
  version :latest
  sha256 :no_check

  url 'https://codespace.app/download/latest'
  appcast 'https://codespace.app/releases'
  name 'Codespace'
  homepage 'https://codespace.app/'

  depends_on macos: '>= :el_capitan'

  app 'Codespace.app'
end
