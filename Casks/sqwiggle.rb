cask :v1 => 'sqwiggle' do
  version :latest
  sha256 :no_check

  url 'https://www.sqwiggle.com/download/mac'
  homepage 'https://www.sqwiggle.com'
  license :unknown

  app 'Sqwiggle.app'
end
