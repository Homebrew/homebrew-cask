class Burn < Cask
  version '2.5.1'
  sha256 'e82d2b7ef6a99e5a139706ff4e360659830d618ab8743e4b55ec80cdcdc97596'

  url "https://downloads.sourceforge.net/project/burn-osx/Burn/#{version}/burn251.zip"
  homepage 'http://burn-osx.sourceforge.net/'
  license :oss

  app 'Burn.localized/Burn.app'
end
