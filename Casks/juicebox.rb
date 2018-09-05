cask 'juicebox' do
  version '1.9.0'
  sha256 '456d986e87f991be0d4afbe219483a26b33a8703f1d03f2682e4976c36b87acf'

  # s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox/Juicebox_#{version}.dmg"
  name 'Juicebox'
  homepage 'http://aidenlab.org/juicebox/'

  app 'Juicebox.app'

  caveats do
    depends_on_java '8+'
  end
end
