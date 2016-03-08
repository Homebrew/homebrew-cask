cask 'couleurs' do
  version '1.1'
  sha256 'c05e5121e2d2cfdb6b4cac234b8e8bce4b0990209249d134b51e1d8ef63919ff'

  url "https://couleursapp.com/couleurs-#{version}.zip"
  appcast 'https://couleursapp.com/updates/releases.xml',
          checkpoint: '551b133875dd44b446ef157a2645c32f48f4fbe1d1659ac3caef93c1db36ca32'
  name 'Couleurs'
  homepage 'https://couleursapp.com/'
  license :gratis

  depends_on macos: '>= :yosemite'

  app 'Couleurs.app'
end
