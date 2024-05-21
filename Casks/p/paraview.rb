cask "paraview" do
  arch arm: "arm64", intel: "x86_64"
  min_macos_version = on_arch_conditional arm: "11.0", intel: "10.15"

  version "5.12.0"
  sha256 arm:   "6b50e2d90fd2d2caf1792a66358a854f59aa9c4825b3a8ec997339c893c94bb6",
         intel: "1b9aca43835a58fb490137031434e4fcbdd4a07247038e3931624a0139917f4b"

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX#{min_macos_version}-Python3.10-#{arch}.dmg",
      user_agent: :fake
  name "ParaView"
  desc "Data analysis and visualization application"
  homepage "https://www.paraview.org/"

  livecheck do
    url "https://www.paraview.org/files/listing.txt"
    regex(%r{(?<!nightly/)ParaView[._-](\d+(?:\.\d+)+)[._-]MPI[._-]OSX#{min_macos_version}[._-]Python3\.10[._-]#{arch}
          \.dmg}ix)
  end

  depends_on macos: ">= :sierra"

  app "ParaView-#{version}.app"
  binary "#{appdir}/ParaView-#{version}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
