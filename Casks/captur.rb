cask :v1 => 'captur' do
  version '2.4'
  sha256 '1f6f19806290c1c366701a8391fdc26cae3b1a54e3d54d715e420346eeb66648'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/27027504/captur-#{version}.dmg.zip"
  name 'Captur'
  homepage 'http://cambhlumbulunk.blogspot.co.uk/p/captur.html'
  license :gratis

  container :nested => "captur-#{version}.dmg"
  app '64 Bit/Captur.app'
end
