cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.15"
  sha256 arm:   "9e76c3964eefab9eb2742d85ffdd2b89b3424f06d322c00ecf3258a4f3cc07e7",
         intel: "1f6985485f472b966f31865acc8e521aaa8119cdd7934a89c4f8591d1bde25d9"

  url "https://github.com/glide-wm/glide/releases/download/v#{version}/Glide_#{version}_#{arch}.dmg"
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
