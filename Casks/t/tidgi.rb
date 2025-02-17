cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0-fix"
  sha256 arm:   "ea93da7079d78518430b465f8074ee8ab1625db67ec7db8757abef5be206b847",
         intel: "62a897f56285044da3ea0d0089dd7d446219355b41b60f7b14ed1ba9606b33f3"

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
