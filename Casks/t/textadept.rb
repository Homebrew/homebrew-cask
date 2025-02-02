cask "textadept" do
  version "12.6"
  sha256 "decd4a3cc38b31ee479920da1047a973b8548d71eb930cbbe333f049be02db65"

  url "https://github.com/orbitalquark/textadept/releases/download/textadept_#{version}/textadept_#{version}.macOS.zip",
      verified: "github.com/orbitalquark/textadept/"
  name "Textadept"
  desc "Text editor"
  homepage "https://orbitalquark.github.io/textadept/"

  livecheck do
    url :url
    regex(/^textadept[._-]v?(\d+(?:\.\d+)+)$/i)
  end

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
