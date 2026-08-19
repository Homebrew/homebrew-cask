cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "82a0069811d44f61135f97c0acfda4d0342373dd30de1cb356ca790c2d42e5aa",
         intel: "87a85076dffcd86c5d5c00ca5a7bdc79fa4efc9259a6bd61baa756d8ea51e057"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
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
