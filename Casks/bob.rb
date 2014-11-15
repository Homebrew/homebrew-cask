cask :v1 => 'bob' do
  version '0.1.2'
  sha256 'e73e5a5a2a4750cfa62f405846d87abc6fc32dba6df4b1bf74f910cee2cf8e87'

  url "https://github.com/casperstorm/Bob/releases/download/#{version}/Bob.zip"
  homepage 'https://github.com/casperstorm/Bob'
  license :oss

  app 'Bob.app'
end
