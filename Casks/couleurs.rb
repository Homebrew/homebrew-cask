cask :v1 => 'couleurs' do
  version '1.1'
  sha256 'c05e5121e2d2cfdb6b4cac234b8e8bce4b0990209249d134b51e1d8ef63919ff'

  url "http://couleursapp.com/couleurs-#{version}.zip"
  homepage 'http://couleursapp.com/'
  license :gratis

  app 'Couleurs.app'

  depends_on :macos => '>= :yosemite'
end
