cask :v1 => 'houdahgeo' do
  version '4.2.5'
  sha256 '0257f9cdf2098552c2519c5d8b0049e842cc1e3a6552ccd480eb52bfb90d3c9a'

  url "http://houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast "http://www.houdah.com/houdahGeo/updates#{version.to_i}/profileInfo.php",
          :sha256 => '38fe52de950fd62f2ab007ac9599d3d98d74552ce20709df336ba76e6f715ea5'
  name 'HoudahGeo'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
