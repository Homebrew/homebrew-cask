cask 'couleurs' do
  version '1.2'
  sha256 '59d725b0bbe7f7f2744b8b372006f0ec26c9b2300ea76139bed49ce8bb5824b2'

  url "https://couleursapp.com/couleurs-#{version}.zip"
  appcast 'https://couleursapp.com/updates/releases.xml'
  name 'Couleurs'
  homepage 'https://couleursapp.com/'

  depends_on macos: '>= :yosemite'

  app 'Couleurs.app'
end
