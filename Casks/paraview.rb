cask "paraview" do
  version "5.8.1"
  sha256 "50fed2e654438398786809d4d25eff9fd7a5487eba9f0320b81cdab10dbe9436"

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-Python2.7-64bit.dmg",
      user_agent: :fake
  appcast "https://www.paraview.org/files/listing.txt"
  name "ParaView"
  homepage "https://www.paraview.org/"

  depends_on macos: ">= :sierra"

  app "ParaView-#{version}.app"
end
