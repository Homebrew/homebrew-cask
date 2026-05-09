cask "chiri" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "f23bad279bce6f854d36d72fd96cd230c91a1c2b4f8c51674ac37dfc7cfaac09",
         intel: "69743cd1000454016b5e5c03d7a6fad54ed567673c417b4593d34085a6b85f7f"

  url "https://github.com/chiriapp/chiri/releases/download/app-v#{version}/Chiri_#{version}_#{arch}.dmg"
  name "Chiri"
  desc "CalDAV-compatible task management app"
  homepage "https://github.com/chiriapp/chiri"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^app-v(\d+(?:\.\d+)+)$/i)
  end

  app "Chiri.app"

  zap trash: [
    "~/Library/Application Support/moe.sapphic.Chiri",
    "~/Library/Caches/moe.sapphic.chiri",
    "~/Library/Logs/moe.sapphic.chiri",
    "~/Library/Preferences/moe.sapphic.Chiri.plist",
    "~/Library/WebKit/moe.sapphic.Chiri",
  ]
end
