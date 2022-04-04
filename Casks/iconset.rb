cask "iconset" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "2.2.0"

  if Hardware::CPU.intel?
    sha256 "c2c83113711b81625d0ccce9697c2bcc104f447f15fd21491238f8337b89c3a1"
  else
    sha256 "b82622a113c2fbdcc7df009b8d24e22f3e5f654054aa959b46c4c2df882f8147"
  end

  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-#{arch}mac.zip",
      verified: "github.com/IconsetApp/iconset/"
  name "Iconset"
  desc "Organize icon sets and packs in one place"
  homepage "https://iconset.io/"

  app "Iconset.app"

  zap trash: [
    "~/Library/Application Support/Iconset",
    "~/Library/Preferences/io.iconset.app.plist",
    "~/Library/Saved Application State/io.iconset.app.savedState",
  ]
end
