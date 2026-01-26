cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "2607d4c53cef0364057a5bff383414be0d0e24102618c80e9d20764486c0ece7",
         intel: "686d6a758c3126401291e96457c4c1cf692e4cd8e7bf2e41d769f3cc25b371b4"

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
