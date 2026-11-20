cask "nodebox" do
  version "3.2.0"
  sha256 "28f6e6b0e8c37e0f49227de5efb45262678e5cbd9512f28efc7d1528773a4710"

  url "https://github.com/nodebox/nodebox/releases/download/v#{version}/NodeBox-#{version}.dmg"
  name "NodeBox"
  desc "Node-based data application for visualisation and generative design"
  homepage "https://www.nodebox.net/node/"

  livecheck do
    url "https://www.nodebox.net/download/"
    regex(/href=.*?NodeBox[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :monterey

  app "NodeBox.app"

  zap trash: [
    "~/Library/Logs/NodeBox",
    "~/Library/NodeBox",
  ]
end
