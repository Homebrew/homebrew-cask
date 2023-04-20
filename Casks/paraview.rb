cask "paraview" do
  arch arm: "arm64", intel: "x86_64"
  min_macos_version = on_arch_conditional arm: "11.0", intel: "10.13"

  version "5.11.1"
  sha256 arm:   "0ab32a8d8db5ae944c08c303bcd4aaef86b3ed01f73d2c46840aa4b304499190",
         intel: "89aad55be86a3a3a6c49865757e43ad2890915ef33095446914f149f6de70fd3"

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
