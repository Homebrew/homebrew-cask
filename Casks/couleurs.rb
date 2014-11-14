cask :v1 => 'couleurs' do
  version '1.0'
  sha256 '64af095afc12b53d8b979594c9d23b6601bb3ad7dd177aa5b965c74a2bd7efa2'

  url "http://couleursapp.com/couleurs-#{version}.zip"
  homepage 'http://couleursapp.com/'
  license :gratis

  app 'Couleurs.app'

  caveats do
    os_version_only '10.10'
  end
end
