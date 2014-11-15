cask :v1 => 'burn' do
  version '2.5.1'
  sha256 'e82d2b7ef6a99e5a139706ff4e360659830d618ab8743e4b55ec80cdcdc97596'

  url "https://downloads.sourceforge.net/project/burn-osx/Burn/#{version}/burn251.zip"
  homepage 'http://burn-osx.sourceforge.net/'
  license :gpl

  app 'Burn.localized/Burn.app'
end
