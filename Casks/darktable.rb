cask :v1 => 'darktable' do
  version '1.4.2'
  sha256 '27b03c2ef1bfe8a66665e252d55746abd9b8a29b7f5e00ec1f646a3f22e7551a'

  url "https://downloads.sourceforge.net/sourceforge/darktable/darktable-#{version}.dmg"
  homepage 'http://www.darktable.org/'
  license :oss

  app 'darktable.app'
end
