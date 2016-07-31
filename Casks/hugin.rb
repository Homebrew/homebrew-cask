cask 'hugin' do
  version '2014.0.0'
  sha256 '9d3995612aff2235a20cd53b119dde565cd6c00afb62ec48bf63203a24fa8e61'

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  name 'Hugin'
  homepage 'http://hugin.sourceforge.net/'
  license :gpl

  app 'Hugin.app'
end
