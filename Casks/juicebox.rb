cask 'juicebox' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox/Juicebox.dmg'
  name 'Juicebox'
  homepage 'http://aidenlab.org/juicebox/'

  app 'Juicebox.app'

  caveats do
    depends_on_java('8')
  end
end
