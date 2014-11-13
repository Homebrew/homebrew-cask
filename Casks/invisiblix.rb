cask :v1 => 'invisiblix' do
  version '3.2'
  sha256 '528328a0e7c3f0a72e763ea766324d491dfe20d6f18a2882eefda1a5a2c4d68e'

  url "https://downloads.sourceforge.net/project/invisiblix/invisibliX-#{version}.zip"
  appcast 'http://www.read-write.fr/invisiblix/appcast.xml',
          :sha256 => '35040c896c24cd6299de79f3a977584af0bdc29de72f1c4f4023ae41e17b0d6c'
  homepage 'http://www.read-write.fr/invisiblix/'
  license :oss

  app 'invisibliX.app'
end
