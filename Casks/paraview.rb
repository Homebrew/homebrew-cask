cask "paraview" do
  version "5.8.1"
  sha256 "df0de9347c8bfc674ffd2cf88a72ddc0005545ffa68412d63b8631466096656e"

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-Python2.7-64bit.dmg",
      user_agent: :fake
  appcast "https://www.paraview.org/files/listing.txt"
  name "ParaView"
  homepage "https://www.paraview.org/"

  depends_on macos: ">= :sierra"

  app "ParaView-#{version}.app"
end
