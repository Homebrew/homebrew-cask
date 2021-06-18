cask "paraview" do
  version "5.9.1"
  sha256 "8e7648b6380bc0688971fae17da010e63d75bc67f899286fd8173bb6910cc404"

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.13-Python3.8-64bit.dmg",
      user_agent: :fake
  appcast "https://www.paraview.org/files/listing.txt"
  name "ParaView"
  homepage "https://www.paraview.org/"

  depends_on macos: ">= :sierra"

  app "ParaView-#{version}.app"
end
