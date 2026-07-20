cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.14"
  sha256 arm:   "a3d2691ba8eaf5a03490001b69c21ad585ade7c2001eee3ed8a2b70c0aa95ae8",
         intel: "3ac27a62fb68dbed60f9324171bdf0b22361edc4f5a52350b44205da60ba3273"

  url "https://github.com/glide-wm/glide/releases/download/v#{version}/Glide_#{version}_#{arch}.dmg",
      verified: "github.com/glide-wm/glide/"
  name "Glide"
  desc "Tiling window manager with tree layouts"
  homepage "https://glidewm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Glide.app"
  binary "#{appdir}/Glide.app/Contents/MacOS/glide"

  uninstall login_item: "Glide"

  zap trash: "~/.glide/layout.ron", rmdir: "~/.glide"
end
