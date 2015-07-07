cask :v1 => 'couleurs' do
  version '1.1'
  sha256 'c05e5121e2d2cfdb6b4cac234b8e8bce4b0990209249d134b51e1d8ef63919ff'

  url "https://couleursapp.com/couleurs-#{version}.zip"
  name 'Couleurs'
  appcast 'https://couleursapp.com/updates/releases.xml',
          :sha256 => 'a90f989c95a673f780d6fd891aab8574cb2a1393640da89caa792a9521de4114'
  homepage 'https://couleursapp.com/'
  license :gratis

  app 'Couleurs.app'

  depends_on :macos => '>= :yosemite'
end
