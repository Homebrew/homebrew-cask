cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.12.1-update"
  sha256 arm:   "fdf70c092ee4d8b4f410b72b14fa6243f58d26dc5a26860e2cb8513874e021d6",
         intel: "5d9adaa2d7fa7b0b2b6f62c16d94d344cad3f81e7634d5ac658fd0c63bbc84dc"

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version}/TidGi-darwin-#{arch}-#{version.split("-").first}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

  livecheck do
    url :url
    regex(/^\D*?(\d+(?:\.\d+)+.*)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TidGi.app"

  zap trash: [
    "~/Library/Application Support/TidGi",
    "~/Library/Caches/com.tidgi.app",
    "~/Library/Caches/com.tidgi.app.ShipIt",
    "~/Library/Preferences/com.tidgi.app.plist",
    "~/Library/Preferences/com.tidgi.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
