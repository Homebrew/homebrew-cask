cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "59349880c729a80904da9426fa9392b1a76f23fde58775b2a0b59de415758761",
         intel: "1f0ead7a3e725502c3313c0ec022ccf723036f7686895bae961a3075d2470474"

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
