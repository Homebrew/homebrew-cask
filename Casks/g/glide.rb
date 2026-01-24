cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "5b472e51cf30a2479c837ebde8b18dd042cb2bfcc41352a889a1f2ce91f44151",
         intel: "be352e5c343fb8262b8b3266980294cbc1ac5154e028ffe7bd37216b4c653409"

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
