cask 'qmapshack' do
  version '1.8.1'
  sha256 '8ecfe0f7ba39e036c5ab7d85ce1d222b526c6915a1a3b6b69ac8b343c26e3a09'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
