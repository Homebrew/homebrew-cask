cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "c7a57bf67b6f03b44a4fb28b3d6f08667e22de12a46ad3f85ad08be8c214377b",
         intel: "41e8076b849326b0601693fc2a2c0acd272a10eb142a8e88cbc2ec2213064f60"

  url "https://github.com/glide-wm/glide/releases/download/v#{version}/Glide_#{version}_#{arch}.dmg",
      verified: "github.com/glide-wm/glide/"
  name "Glide"
  desc "Tiling window manager with tree layouts"
  homepage "https://glidewm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Glide.app"
  binary "#{appdir}/Glide.app/Contents/MacOS/glide"

  uninstall login_item: "Glide"

  zap trash: "~/.glide/layout.ron", rmdir: "~/.glide"
end
