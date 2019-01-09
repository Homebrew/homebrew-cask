cask 'cinebench' do
  version 'R15.038'
  sha256 'a255ca5b7fddd1dfe896058ba01fdf3d141de639309e7325aa6c241cd658a4f3'

  url "https://http.maxon.net/pub/benchmarks/CINEBENCH#{version}.dmg"
  name 'Cinebench'
  homepage 'https://www.maxon.net/products/cinebench/'

  app "CINEBENCH #{version}"

  zap trash: [
               '~/Library/Caches/net.maxon.cinema4d',
               '~/Library/Preferences/MAXON',
             ]
end
