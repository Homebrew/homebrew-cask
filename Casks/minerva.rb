cask 'minerva' do
  version '3.5.0'
  sha256 'c2a53ab7bd14924e2a7e3f987eae2586f408c6b24b8b59cad435f9bd7668a130'

  # videosmnv.s3.amazonaws.com/CV/downloads/Minerva- was verified as official when first introduced to the cask
  url "https://videosmnv.s3.amazonaws.com/CV/downloads/Minerva-#{version.dots_to_hyphens}.air"
  name '.minerva'
  homepage 'https://mariani.life/projects/minerva-air/'

  depends_on cask: 'adobe-air'

  app 'minerva.app'

  caveats do
    discontinued
  end
end
