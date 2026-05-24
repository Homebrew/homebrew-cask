cask "img2b" do
  version "0.1.1"
  sha256 "53fd784a04017098ada4fec064cbbb6730f84649c05db9d3ebe0d26e61e26c08"

  url "https://github.com/laloe74/img2b/releases/download/v#{version}/img2b-v#{version}.dmg",
      verified: "github.com/laloe74/img2b/"
  name "img2b"
  desc "macOS blog image hosting tool — drag, compress, upload, TOML"
  homepage "https://github.com/laloe74/img2b"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "img2b.app"

  zap trash: [
    "~/Library/Application Support/img2b",
    "~/Library/Preferences/com.image2blog.app.plist",
    "~/Library/Saved Application State/com.image2blog.app.savedState",
  ]
end
