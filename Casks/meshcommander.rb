cask "meshcommander" do
  version "0.8.5"
  sha256 "a161ab200bfa30e9550fcfcf9d8e19da867b5171a5a8260d36884b752b6eb69a"

  # bintray.com/gomesjj/APPS/ was verified as official when first introduced to the cask
  url "https://bintray.com/gomesjj/APPS/download_file?file_path=#{version.no_dots}%2FMeshCommander.dmg.zip"
  appcast "https://dl.bintray.com/gomesjj/APPS/",
          must_contain: version.no_dots
  name "MeshCommander"
  homepage "https://www.devtty.uk/apple/Intel_Mesh_Commander_on_Mac_OS_X/"

  app "MeshCommander.app"
end
