cask "textadept" do
  version "12.3"
  sha256 "4cd057f6bb70ab6b564bc76ebcb93b8e9de5a6bcda3f8ccc4ba80549b949b401"

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
