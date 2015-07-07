cask :v1 => 'sqwiggle' do
  version :latest
  sha256 :no_check

  url 'https://www.sqwiggle.com/download/mac'
  name 'Sqwiggle'
  homepage 'https://www.sqwiggle.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sqwiggle.app'
end
