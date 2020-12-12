cask "meshcommander" do
  version "0.8.9"
  sha256 "b3f5fecb69d5c5d4578904520f1f15d0496e82b76fa945dbb0942d07804104d9"

  # bintray.com/gomesjj/APPS/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/gomesjj/APPS/#{version}/%2FMeshCommander.dmg.zip"
  appcast "https://dl.bintray.com/gomesjj/APPS/"
  name "MeshCommander"
  homepage "https://www.devtty.uk/apple/Intel_Mesh_Commander_on_Mac_OS_X/"

  app "MeshCommander.app"
end
