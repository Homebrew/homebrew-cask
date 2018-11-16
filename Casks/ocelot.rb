cask 'ocelot' do
  version '3.0'
  sha256 '1c53823f11bc2fb8952a7b23b6b31e5196571990e8b1ffdae9dc970c2d0e9eb1'

  # bintray.com/okapi was verified as official when first introduced to the cask
  url "https://bintray.com/okapi/Distribution/download_file?file_path=Ocelot-#{version}.dmg"
  name 'Ocelot'
  homepage 'https://open.vistatec.com/ocelot/'

  app 'Ocelot.app'

  zap trash: '~/.ocelot'

  caveats do
    depends_on_java '8+'
  end
end
