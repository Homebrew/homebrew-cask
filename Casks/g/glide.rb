cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.13"
  sha256 arm:   "f3baf0bda38edd240c34000103181bcc7ba561413deabbb10c804ec6cbbb4f56",
         intel: "5c860e5b6e38f6c1b75ef4c42a9222a63bfd6927c0df30ccc8f4d7943985a7cb"

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
