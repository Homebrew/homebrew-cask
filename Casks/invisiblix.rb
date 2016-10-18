cask 'invisiblix' do
  version '3.2'
  sha256 '528328a0e7c3f0a72e763ea766324d491dfe20d6f18a2882eefda1a5a2c4d68e'

  # sourceforge.net/invisiblix was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/invisiblix/invisibliX-#{version}.zip"
  appcast 'https://www.read-write.fr/invisiblix/appcast.xml',
          checkpoint: 'f4ec5f8c4ef92d17aafde286acd8c3d35058da7e2bce93d2da8ee059dbdea4b6'
  name 'invisibliX'
  homepage 'https://www.read-write.fr/invisiblix/'

  app 'invisibliX.app'
end
