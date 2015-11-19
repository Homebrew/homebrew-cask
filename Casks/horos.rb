cask :v1 => 'horos' do
  version '1.0.7'
  sha256 '5d21c4eeaeeca2caeabb795b22bd8e0aa89d4c1aef70c10f9e39a0f68b37ea66'

  url "http://www.horosproject.org/downloads/Horos#{version}.dmg"
  name 'Horos – Free, open medical image viewer'
  homepage 'http://www.horosproject.org'
  license :gpl

  app 'Horos.app'
end
