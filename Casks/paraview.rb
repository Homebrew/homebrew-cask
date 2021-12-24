cask "paraview" do
  version "5.10"
  sha256 "6b65522284f72c60a211e0ba1b8146c103d75fcf0c280a9c2b4e108c1fca337c"

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.13-Python3.8-64bit.dmg",
      user_agent: :fake
  appcast "https://www.paraview.org/files/listing.txt"
  name "ParaView"
  homepage "https://www.paraview.org/"

  depends_on macos: ">= :sierra"

  app "ParaView-#{version}.app"
end
