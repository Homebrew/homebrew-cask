cask 'fluor' do
  version '1.0.1'
  sha256 b1f8e0d40e134f5cc3b321839e6fbfda0c4cabdd8876c0abd0befef20805444f

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  name 'Fluor'
  homepage 'https://github.com/Pyroh/Fluor/'

  app 'Fluor.app'
end
