cask :v1 => 'monodraw' do
  version :latest
  sha256 :no_check

  # amazonaws is the official download host per the vendor homepage
  url 'http://helftone-assets.s3.amazonaws.com/monodraw/downloads/Monodraw-latest.zip'
  name 'Monodraw'
  homepage 'http://monodraw.helftone.com/'
  license :commercial

  app 'Monodraw.app'
end
