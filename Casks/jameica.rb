cask 'jameica' do
  version '2.8.5'
  sha256 '398aa78e1c319ae774464e6674536c7b46c8f5b6db264a084a48247f3b49a6a3'

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'

  app 'jameica.app'
end
