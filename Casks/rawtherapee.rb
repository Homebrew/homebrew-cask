cask :v1 => 'rawtherapee' do
  version '4.1.26'
  sha256 'b8afa0978050621bc10ddead6f4d0b7a79f54f4d06c608af63948c4e53122255'

  url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.7_64_#{version}.zip"
  homepage 'http://rawtherapee.com'
  license :unknown    # todo: improve this machine-generated value

  container :nested => "RawTherapee_OSX_10.7_64_#{version}.dmg"
  app 'RawTherapee.app'
end
