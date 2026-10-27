cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.17"
  sha256 arm:   "cf08c5176d35865ffd4e4d4dc10c00501876e980eb04bc7db6354b052ff50d07",
         intel: "aab646cb031f5e2a5fda60fd4d80c3049f118fed6f3d248125d8eb0384c71fa3"

  url "https://github.com/glide-wm/glide/releases/download/v#{version}/Glide_#{version}_#{arch}.dmg"
  name "Glide"
  desc "Tiling window manager with tree layouts"
  homepage "https://glidewm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "glide-browser"
  depends_on :macos

  app "Glide.app"
  binary "#{appdir}/Glide.app/Contents/MacOS/glide"

  uninstall quit:       "org.glidewm.glide",
            login_item: "Glide"

  zap trash: [
        "~/.glide/layout.ron",
        "~/Library/Saved Application State/org.glidewm.glide.savedState",
      ],
      rmdir: "~/.glide"
end
