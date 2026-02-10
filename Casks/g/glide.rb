cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "9f1be9eadd737f69d18a10b12d18b1d3d209aa24c6ae181b596e326172e381b0",
         intel: "bcb0b285b6ae94027b3cdee971b3753c5d16795576e53787f025cb6495938797"

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
