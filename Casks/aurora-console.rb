cask 'aurora-console' do
  version '1.2'
  sha256 'c480e46592d6fb6f025572795bac80357f81b662cefdb3d149c77c723fb9a81f'

  url "https://github.com/Luxurioust/aurora/releases/download/#{version}/aurora_darwin_amd64_v#{version}.tar.gz"
  name 'aurora'
  homepage 'https://xuri.me/aurora'
  license :mit

  binary 'aurora', target: 'aurora'
end