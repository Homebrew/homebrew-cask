cask 'maddthesane-perian' do
  version '1.3.2'
  sha256 'cc13f5b587f0cb53c5f95329d75686cd32eb599b125fe30e4ae31c3ab58d3a9e'

  url "https://github.com/MaddTheSane/perian/releases/download/#{version}/Perian.prefPane.zip"
  appcast 'https://github.com/MaddTheSane/perian/releases.atom',
          :sha256 => '11c4550ed6a328e6113b65e5af51338172bd0c63ad21bc20756a4d3f42393136'
  name 'Perian'
  homepage 'https://github.com/MaddTheSane/perian'
  license :gpl

  prefpane 'Perian.prefPane'

  depends_on :cask => 'caskroom/versions/quicktime-player7'
end
