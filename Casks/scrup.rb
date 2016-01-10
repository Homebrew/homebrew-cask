cask 'scrup' do
  version '1.3.3-bd23160'
  sha256 ''

  # hunch.se is the official download host per the vendor homepage
  url "http://data.hunch.se/scrup/Scrup-#{version}.zip"
  appcast 'https://github.com/rsms/scrup/releases.atom',
          :sha256 => '7f7c3e48cf363950454a1ca747eaa0134ab56ed841c683a9a8857422c32d3d85'
  name 'Scrup'
  homepage 'https://github.com/rsms/scrup'
  license :mit

  app 'Scrup.app'

  caveats do
    discontinued
  end
end
