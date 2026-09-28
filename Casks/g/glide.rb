cask "glide" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.16"
  sha256 arm:   "a08fbf7862b45993480db6bd8c79795b9383eba9b5cb0950ea31ae359d1b9fa9",
         intel: "7479ff8a8508861e861cf118d919bbe903cd7322d51a14ae3a242666595744bf"

  url "https://github.com/glide-wm/glide/releases/download/v#{version}/Glide_#{version}_#{arch}.dmg"
  name "Glide"
  desc "Tiling window manager with tree layouts"
  homepage "https://glidewm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Glide.app"
  binary "#{appdir}/Glide.app/Contents/MacOS/glide"

  uninstall login_item: "Glide"

  zap trash: "~/.glide/layout.ron", rmdir: "~/.glide"
end
