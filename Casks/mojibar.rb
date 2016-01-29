cask 'mojibar' do
  version '2.0.1'
  sha256 '9d595f9cae721ef2385d94848d62b5d899f82e8ec7998e5d28df5cd6bb669a3c'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '0140801b209c6c755c97c9a7e4ac8c83b492c8a480e12a20cf0617b731ed3612'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'
  license :mit

  app 'Mojibar-darwin-x64/Mojibar.app'
end
