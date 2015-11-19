cask :v1 => 'dictater' do
  version '1.2'
  sha256 '32ae561c93af4979d23c0c8e22f31665a93f4f654539a0c10f725b35a62c9557'

  url "https://github.com/Nosrac/Dictater/releases/download/#{version}/Dictater.zip"
  appcast 'https://github.com/Nosrac/Dictater/releases.atom'
  name 'Dictater'
  homepage 'https://nosrac.github.io/Dictater/'
  license :mit

  app 'Dictater.app'
end
