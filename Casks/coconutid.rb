cask 'coconutid' do
  if MacOS.version <= :panther
    odie 'There is no version for macOS operating systems lower than 10.3'
  elsif MacOS.version <= :leopard
    version '2.4'
    sha256 '7ef6686f6a8d3ca6df5c7d47c02d0e5c7973646129bf1075fddee4b2307bce85'
    url "https://www.coconut-flavour.com/downloads/coconutIdentityCard_#{version}.zip"
  else
    version '3.4'
    sha256 'f6a07574bc756f9f35cbc13e65a7220f8e082dc847ff78d5895b7624324a0fdb'
    url "https://www.coconut-flavour.com/downloads/coconutID_#{version}.zip"
  end

  name 'coconutID'
  homepage 'https://www.coconut-flavour.com/coconutid/'

  auto_updates true

  app 'coconutID.app'
end
