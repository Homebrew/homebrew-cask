cask 'shapes' do
  version '4.5.2'
  sha256 'f1f6069bc88aab4890b1dd87294b1acbacf0fb7cb61b6dbe57723ba5cf758b91'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => 'a98fb5ab75b37ddebef6198b8615d56713e7d8a4b89f2872ad5cae89156ec532'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
