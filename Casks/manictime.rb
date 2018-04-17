cask 'manictime' do
  version '1.4.2'
  sha256 'a42cfb6aaf969d203e5938c2eb4ecbab750cb475cdf67e024e662924794673e2'

  url "http://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  name 'ManicTime'
  homepage 'https://www.manictime.com/Mac'

  pkg "ManicTime-#{version}.pkg"

  uninstall pkgutil: 'com.finkit.manictime.tracker'

  zap trash: '~/Library/Application Support/ManicTime'
end
