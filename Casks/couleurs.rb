cask 'couleurs' do
  version '1.1'
  sha256 'c05e5121e2d2cfdb6b4cac234b8e8bce4b0990209249d134b51e1d8ef63919ff'

  url "https://couleursapp.com/couleurs-#{version}.zip"
  appcast 'https://couleursapp.com/updates/releases.xml',
          :sha256 => 'b0f2d4c4d39692fea7ecd32f1951525bb7c73b90cbbbf2212b22f13635b2c05f'
  name 'Couleurs'
  homepage 'https://couleursapp.com/'
  license :gratis

  depends_on :macos => '>= :yosemite'

  app 'Couleurs.app'
end
