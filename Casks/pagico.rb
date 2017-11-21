cask 'pagico' do
  version '8.8.2213'
  sha256 '006b08d6c1f4cbc5a46bfdb71a663aedf11707bc1e4648b1bfcacbf29868d28b'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
