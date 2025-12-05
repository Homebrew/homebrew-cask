cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.33"
  sha256 arm:   "a7de46b3ac73d2b24e4289a38b349b663e63f74756a049fb017ce90723a7fa85",
         intel: "ea51acd3f6f12477ec637827f0bcc740dcefec4ade60b2f935f337e3b4d19835"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
