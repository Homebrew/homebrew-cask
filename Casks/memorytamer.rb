cask :v1 => 'memorytamer' do
  version '0.8.1'
  sha256 '00f4b53d57e118e580b0b4be74198d0e2cc2d695f6ad63fb19ef4e385887d4fd'

  url "https://memorytamer.s3.amazonaws.com/MemoryTamer-#{version}.zip"
  homepage 'http://www.memorytamer.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'MemoryTamer.app'
end
