cask "paraview" do
  version "5.9.0"
  sha256 "cbb475816400ed1f24319826d38a4b87564d46765fd9000b2e59296b7dd0bf41"

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.13-Python3.8-64bit.dmg",
      user_agent: :fake
  appcast "https://www.paraview.org/files/listing.txt"
  name "ParaView"
  homepage "https://www.paraview.org/"

  depends_on macos: ">= :sierra"

  app "ParaView-#{version}.app"
end
