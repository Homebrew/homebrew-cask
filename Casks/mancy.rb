cask :v1 => 'mancy' do
  version '1.0.0'
  sha256 '2220d0bd011a12a90a0d36affd581f5c94a192ecca1dcce721e363233f607fe7'

  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  name 'Mancy'
  homepage 'https://github.com/princejwesley/Mancy/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
