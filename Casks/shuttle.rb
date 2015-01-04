cask :v1 => 'shuttle' do
  version '1.2.2'
  sha256 'a6a20b461556e54c99f14eaaaa4ee8e41cb0250561525be87340f0fda635d2b3'

  url "https://github.com/fitztrev/shuttle/releases/download/#{version}/Shuttle.zip"
  homepage 'http://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap :delete => '~/.shuttle.json'
end
