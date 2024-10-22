cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.6.333"
  sha256 arm:   "067fc376b35db1240f1ca79829386ecc74bccd14fb699e44745764edc21ee467",
         intel: "85256fe6af1a8b777de72ef5c3d9cff65d86cf1731d7f2a9ec58eafbe733f4aa"

  url "https://dist.huly.io/Huly-macos-#{version}-#{arch}.zip"
  name "Huly"
  desc "All-in-One Project Management Platform"
  homepage "https://huly.io/"

  livecheck do
    url "https://github.com/hcengineering/platform/releases"
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Huly.app"

  zap trash: [
    "~/Library/Application Support/Huly Desktop",
    "~/Library/Logs/Huly Desktop",
  ]
end
