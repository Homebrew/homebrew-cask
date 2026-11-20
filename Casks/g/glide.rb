cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.18"
  sha256 arm:   "29bab59e387d15156b24f190b45410868477749c3b2e633ce30b691fd28fcec6",
         intel: "c498f0b9ae40ea63fb1955342374de93ad884e94e53941064faba098aebc2981"

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
