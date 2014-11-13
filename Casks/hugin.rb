cask :v1 => 'hugin' do
  version '2013.0.0'
  sha256 '528cc2249d4cdf9267e85ab836ff36cc0e2450de6663661adfc5e2cc3ef1ec60'

  url "https://downloads.sourceforge.net/sourceforge/hugin/Hugin-#{version}.dmg"
  homepage 'http://hugin.sourceforge.net/'
  license :oss

  app 'Hugin.app'
end
