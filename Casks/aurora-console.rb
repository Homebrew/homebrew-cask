cask 'aurora-console' do
  version '1.4'
  sha256 '44d3de24bf6e3391b165effb039d5cca75fa428ec6d6cb1f6bddd7ad3bca0319'

  url "https://github.com/Luxurioust/aurora/releases/download/#{version}/aurora_darwin_amd64_v#{version}.tar.gz"
  name 'aurora'
  homepage 'https://github.com/Luxurioust/aurora/'
  license :mit

  binary 'aurora', target: 'aurora'
end
