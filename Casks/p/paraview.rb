cask "paraview" do
  arch arm: "arm64", intel: "x86_64"
  min_macos_version = on_arch_conditional arm: "11.0", intel: "10.13"

  version "5.11.2"
  sha256 arm:   "0fc82a819996b80014df24e96095b87f9ceae0f65a0c2bf8157aa2ddda4baa0b",
         intel: "f225784e0b4fa7677b7fc2a4bf7860e9842a032792fe696479f84e4783783220"

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
