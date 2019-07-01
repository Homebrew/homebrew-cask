cask 'dcp-o-matic' do
  version '2.14.8'
  sha256 '0dbfa1a618f3ed8cfdbc0408c6b68bab413f58073d47ea4b20dcdd8075644be4'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
