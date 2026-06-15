cask "nodebox" do
  version "3.1.0"
  sha256 "b46328edcd6fdf2f3f6dcbb87995d53b2eb4efeb6afaa36fff55943bd3873b4e"

  url "https://github.com/nodebox/nodebox/releases/download/v#{version}/NodeBox-#{version}.dmg",
      verified: "github.com/nodebox/nodebox/"
  name "NodeBox"
  desc "Node-based data application for visualisation and generative design"
  homepage "https://www.nodebox.net/node/"

  livecheck do
    url "https://www.nodebox.net/download/"
    regex(/href=.*?NodeBox[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "NodeBox.app"

  zap trash: [
    "~/Library/Logs/NodeBox",
    "~/Library/NodeBox",
  ]
end
