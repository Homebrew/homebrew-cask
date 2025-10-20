cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.25.1"
  sha256 arm:   "2cfb0c815686d2ba972889366bb39814e19958d9a483c9215ee2eb3d6237018e",
         intel: "d859fefb2b0926b57c144b55a91ca8fce30996eb0611269f5bfef49b107f47bf"

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-#{version}-stable-macos-#{arch}.zip",
      verified: "github.com/toeverything/AFFiNE/"
  name "AFFiNE"
  desc "Note editor and whiteboard"
  homepage "https://affine.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
