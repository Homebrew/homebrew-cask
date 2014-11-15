cask :v1 => 'justlooking' do
  version '3.3.3'
  sha256 '730b852c020498886ed061996d9fd5c13c85da707dd18dabbe4cb804afcf1786'

  url "http://chipmunkninja.com/download/JustLooking-#{version}.dmg"
  homepage 'http://chipmunkninja.com/JustLooking'
  license :unknown

  app 'JustLooking.app'
end
