cask :v1 => 'alice' do
  version '1.4'
  sha256 '0d6259bdff7fd0309b532188445d0dd4f7ea4d50f5570e9b46d282fbade74ce1'

  url "http://www.ps.uni-saarland.de/alice/download/Alice-#{version}-4-i386.dmg"
  homepage 'http://www.ps.uni-saarland.de/alice/'
  license :mit

  app 'Alice.app'

  caveats do
    path_environment_variable("#{staged_path}/Alice.app/Contents/Resources/bin")
  end
end
