class Alice < Cask
  version '1.4'
  sha256 '0d6259bdff7fd0309b532188445d0dd4f7ea4d50f5570e9b46d282fbade74ce1'

  url "http://www.ps.uni-saarland.de/alice/download/Alice-#{version}-4-i386.dmg"
  homepage 'http://www.ps.uni-saarland.de/alice/'
  license :unknown

  app 'Alice.app'

  caveats do
    path_environment_variable("#{destination_path}/Alice.app/Contents/Resources/bin")
  end
end
