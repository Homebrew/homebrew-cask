cask "paraview" do
  arch arm: "arm64", intel: "x86_64"
  min_macos_version = on_arch_conditional arm: "11.0", intel: "10.13"

  version "5.10.1"
  sha256 arm:   "1b6bdf86fee03525b1978b4312624bcc522796bbf5675f370797c5f21e189e5d",
         intel: "21d28f0bfd4129a5e394990e981ad79d27c4613f3da9f171417c17af785ebcba"

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
