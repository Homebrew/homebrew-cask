cask "textadept" do
  version "12.1"
  sha256 "9e7455bbd2e98cd6968e678f8f7dab6c655bbed38217e0b5bd4f82fb9b0a7a36"

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
end
