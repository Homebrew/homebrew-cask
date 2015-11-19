cask :v1 => 'monu' do
  version '1.2.0'
  sha256 'ee90e1eadb95983e694c3b8d482cd88758c773dc01024f8ba79b8d9b41175045'

  url "https://github.com/maxogden/monu/releases/download/v#{version}/Monu.zip"
  appcast 'https://github.com/maxogden/monu/releases.atom'
  name 'Monu'
  homepage 'https://github.com/maxogden/monu'
  license :mit

  app 'Monu.app'
end
