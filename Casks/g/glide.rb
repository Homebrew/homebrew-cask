cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.10"
  sha256 arm:   "ca75fe44821711ef35838918e67d83664a8284b2c6ee55656f21aab52ac9e96f",
         intel: "6e59e3423c37c686f3a8598c382cd304cd202d58f1c69ecafe8f2dcba7fa4085"

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
