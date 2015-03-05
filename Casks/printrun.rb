cask :v1 => 'printrun' do
  version '1.2'
  sha256 'b270edb951cbee3e957eab3ecd3bbd4fe25e93ce478393c61f029bfff4e3b902'

  # kapsi.fi is the official download host per the vendor homepage
  url 'http://koti.kapsi.fi/~kliment/printrun/Printrun-Mac-10Mar2014.zip'
  homepage 'https://github.com/kliment/Printrun'
  license :gpl

  app 'Printrun-Mac-10Mar2014.app'
end
