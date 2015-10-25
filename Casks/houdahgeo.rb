cask :v1 => 'houdahgeo' do
  version '4.3.1'
  sha256 'ce53ad5109ea69ac8060d1b8f3c08ae2571ede2616c0a2b0518390dcf0f0bafd'

  url "http://houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast "http://www.houdah.com/houdahGeo/updates#{version.to_i}/profileInfo.php",
          :sha256 => '38fe52de950fd62f2ab007ac9599d3d98d74552ce20709df336ba76e6f715ea5'
  name 'HoudahGeo'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
