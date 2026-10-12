cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.2"
  sha256 arm:   "6f68f0b630922f9e1440e8efc6561623204243f88dc1ee1e6504ade09ee65c66",
         intel: "df6a911a58f167015720b5ff1b29c04d7729548c3d6c73ac10a234cc148506a5"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Athas.app"

  uninstall quit: "com.code.athas"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
