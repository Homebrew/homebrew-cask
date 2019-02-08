cask 'jameica' do
  version '2.8.3'
  sha256 '86fe246ee5df9c699625e9613d43a0308463c98e1ad52089a3e229002faf012c'

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'

  app 'Jameica.app'
end
