cask "beutl" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "acd1881f8d59410fd9e29d3293f2b8f72a1043dcbebe38aa4cce78c65276c276",
         intel: "d0e9c42994e030f48023459ec64eea48e9658bf5821e3e5dc0682d353574acde"

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
