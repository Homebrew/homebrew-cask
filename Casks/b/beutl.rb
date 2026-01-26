cask "beutl" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "9c35670dd53ea49dd9757ad86994076773f5dd8cd832ced4cc1c36ced882dc8b",
         intel: "c322e9f14c6e5bf2f65a7145748e10932e0eef30957f53fda973c4df6c473a61"

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
