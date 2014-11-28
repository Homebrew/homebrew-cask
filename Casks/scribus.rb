cask :v1 => 'scribus' do
  version '1.4.4'
  sha256 '57cdfacbfa6c60c035b746ac40ea8c46718fdfd4a9ac382b3b6c56a318fa162c'

  url "https://downloads.sourceforge.net/project/scribus/scribus/#{version}/scribus-#{version}.dmg"
  homepage 'http://www.scribus.net/canvas/Scribus'
  license :oss

  app 'Scribus.app'
end
