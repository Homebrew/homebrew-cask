cask :v1 => 'maddthesane-perian' do
  version '1.3.2'
  sha256 'cc13f5b587f0cb53c5f95329d75686cd32eb599b125fe30e4ae31c3ab58d3a9e'

  url "https://github.com/MaddTheSane/perian/releases/download/#{version}/Perian.prefPane.zip"
  appcast 'https://github.com/MaddTheSane/perian/releases.atom'
  name 'Perian'
  homepage 'https://github.com/MaddTheSane/perian'
  license :gpl

  prefpane 'Perian.prefPane'

  depends_on :cask => 'caskroom/versions/quicktime-player7'
end
