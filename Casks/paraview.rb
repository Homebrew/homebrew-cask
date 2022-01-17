cask "paraview" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  min_macos_version = Hardware::CPU.intel? ? "10.13" : "11.0"

  version "5.10.0"

  if Hardware::CPU.intel?
    sha256 "346833f38ef82d9313fcb203396b901da41e968a8d7078e2f128a345d2d6bafc"
  else
    sha256 "701663d8bac7daa8f6e6ffb65a6f4dd73adbd9acf9c96e053b692220072f952c"
  end

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX#{min_macos_version}-Python3.9-#{arch}.dmg",
      user_agent: :fake
  name "ParaView"
  desc "Data analysis and visualization application"
  homepage "https://www.paraview.org/"

  livecheck do
    url "https://www.paraview.org/files/listing.txt"
    regex(/ParaView[._-](\d+(?:\.\d+)+)[._-]MPI[._-]OSX#{min_macos_version}[._-]Python3\.9[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "ParaView-#{version}.app"
  binary "#{appdir}/Paraview-#{version}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
