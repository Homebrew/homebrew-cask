cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.4"
  sha256 arm:   "1d8060026405c34a6868f81ac7f4271be9c233802abc438803e8c8777b7f9e25",
         intel: "69f8fcb2777d1da4e0b758cf3ffa595bc767dcbb0f039debe428f5819ceedeae"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
