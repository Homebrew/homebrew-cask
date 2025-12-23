cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "7232d7c6d5ee8ee7291d1c17aa2c13e19e942186864a1f120305ef43a38f6e2f",
         intel: "35f8ca140e791a9c7bb85319a8a906716cf842e78d1e3045caa267b0cba53c52"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "PicGo.app"

  zap trash: [
    "~/Library/Application Support/picgo",
    "~/Library/Preferences/com.molunerfinn.picgo.plist",
    "~/Library/Services/Upload pictures with PicGo.workflow",
  ]
end
