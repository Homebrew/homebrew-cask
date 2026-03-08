cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "6b3662486edbd944e141c32046a301f106331b1151513da3de954825b01aff90",
         intel: "d361031be8dc67ad8305bd2cda23de48eaffd31c1f116205ef52cbad7996424c"

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
