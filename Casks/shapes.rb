cask 'shapes' do
  version '4.5.6'
  sha256 '2ec93a6e7a1c9488685f79c60758b39288e9de51a3434bc6a85ab2d46c83b297'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: '8663b4c11eebc226b7f25f7cf7c2dd06ef5a172faf7857df07a46e29af24bd16'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
