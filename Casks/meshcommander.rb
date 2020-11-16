cask "meshcommander" do
  version "0.88"
  sha256 "97ba03d3f9c4eadc306efc619fa0196c7e9c97d240bff89cfd0e4da719c40fb5"

  # bintray.com/gomesjj/APPS/ was verified as official when first introduced to the cask
  url "https://bintray.com/gomesjj/APPS/download_file?file_path=#{version}%2FMeshCommander.dmg-#{version.no_dots}.zip"
  appcast "https://dl.bintray.com/gomesjj/APPS/",
          must_contain: version.no_dots
  name "MeshCommander"
  homepage "https://www.devtty.uk/apple/Intel_Mesh_Commander_on_Mac_OS_X/"

  app "MeshCommander.app"
end
