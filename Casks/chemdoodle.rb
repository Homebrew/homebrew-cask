cask :v1 => 'chemdoodle' do
  version '6.0.1'
  sha256 '004c4d828230f4640678ba31ef07bf878e00ef3f225144fa088a81c4279c1776'

  url "http://www.chemdoodle.com/downloads/ChemDoodle-osx-#{version}.dmg"
  homepage 'http://www.chemdoodle.com'
  license :unknown    # todo: improve this machine-generated value

  suite 'ChemDoodle'
end
