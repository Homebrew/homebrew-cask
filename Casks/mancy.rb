cask :v1 => 'mancy' do
  version '1.0.0'
  sha256 '2220d0bd011a12a90a0d36affd581f5c94a192ecca1dcce721e363233f607fe7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
