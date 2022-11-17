cask "paraview" do
  arch arm: "arm64", intel: "x86_64"
  min_macos_version = on_arch_conditional arm: "11.0", intel: "10.13"

  version "5.11.0"
  sha256 arm:   "af106e1baf4f270f4c5d8a2f9381ca0c2333bc18e3816964fbcde9983ac015a6",
         intel: "3bb4bda9b7188e384f54ea1378f1e745ef596813770a582d3c07a8f34eb095c6"

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
  binary "#{appdir}/ParaView-#{version}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
