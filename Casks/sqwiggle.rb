cask :v1 => 'sqwiggle' do
  version :latest
  sha256 :no_check

  url 'https://www.sqwiggle.com/download/mac'
  name 'Sqwiggle'
  homepage 'https://www.sqwiggle.com'
  license :gratis

  app 'Sqwiggle.app'
end
