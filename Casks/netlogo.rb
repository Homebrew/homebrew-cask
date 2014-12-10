cask :v1 => 'netlogo' do
  version '5.0.5'
  sha256 '317faad5fadff9bababce580d9c72d74a491ec81de5129529a5d2f4dd8241ebf'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo%20#{version}.dmg"
  homepage 'http://ccl.northwestern.edu/netlogo/'
  license :unknown    # todo: improve this machine-generated value

  app "NetLogo #{version}/NetLogo #{version}.app"
end
