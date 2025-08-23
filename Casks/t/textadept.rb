cask "textadept" do
  version "12.8"
  sha256 "85072473600e4d8b3cb325461e833240478df2bb5e2907bfb89ae6186d45ad04"

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

  app "Textadept.app"
  binary "ta"

  zap trash: [
    "~/.textadept",
    "~/Library/Saved Application State/com.textadept.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
