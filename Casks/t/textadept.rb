cask "textadept" do
  version "13.0"
  sha256 "a691837637cabbab3035a88d64c4f83175e3f79b5018abb4942d79a65b0f28a5"

  url "https://github.com/orbitalquark/textadept/releases/download/textadept_#{version}/textadept_#{version}.macOS.zip",
      verified: "github.com/orbitalquark/textadept/"
  name "Textadept"
  desc "Text editor"
  homepage "https://orbitalquark.github.io/textadept/"

  livecheck do
    url :url
    regex(/^textadept[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Textadept.app"
  binary "ta"

  zap trash: [
    "~/.textadept",
    "~/Library/Saved Application State/com.textadept.savedState",
  ]
end
