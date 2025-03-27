cask "beutl" do
  arch arm: "arm64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "036f22f3b514cb87181ff9ba6697ffbeb339abbf4e11c9bed94f7fc4dfa55270",
         intel: "7868817dc978aa68e81089b652d3bd2decb94781149ca78be24ff66b9a6bdfa6"

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
