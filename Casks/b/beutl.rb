cask "beutl" do
  arch arm: "arm64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "fc09cd6ef10de7809d6c7e81d7378a596f4fca245b7c74fec11c2f0c16fb3d52",
         intel: "abaac774fa45fa374980fc3660831db8461ee0daafedcd7335129eb381d87a80"

  url "https://github.com/b-editor/beutl/releases/download/v#{version}/Beutl.osx_#{arch}.app.zip",
      verified: "github.com/b-editor/beutl/"
  name "Beutl"
  desc "Video editor"
  homepage "https://beutl.beditor.net/"

  depends_on macos: ">= :monterey"
  depends_on formula: "ffmpeg@6"

  app "Beutl.app"

  uninstall quit: "net.beditor.beutl"

  zap trash: [
    "~/.beutl",
    "~/Library/Saved Application State/net.beditor.beutl.savedState",
  ]
end
