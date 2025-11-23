cask "beutl" do
  arch arm: "arm64", intel: "x64"

  version "1.0.7"
  sha256 arm:   "8b94d7574284ddaf8e37b51497a4721f8f6e475df3f4c2e3a2250a5dd49cdd1b",
         intel: "8b0e11f9360dbdf825939593ed3e3e3beedab7bb583f179ed9d7cbdacaeb537c"

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
