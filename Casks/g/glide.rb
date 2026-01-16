cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "02628d6cfa3b2c65c07c12aa996bf51208fafd6f70f3b9ffe2b6573ddd4c62ac",
         intel: "cd37235aca91cef167aea18df36de3a1b0c1ffb1f3b876047bd3545e430bab2c"

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
