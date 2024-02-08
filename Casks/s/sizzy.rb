cask "sizzy" do
  arch arm: "arm64", intel: "intel"

  version "72.2.0"
  sha256 :no_check

  url "https://proxy.sizzy.co/updates/download/mac?arch=#{arch}"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  livecheck do
    url :url
    regex(/Sizzy[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Sizzy.app"

  zap trash: [
    "~/Library/Application Support/Sizzy",
    "~/Library/Logs/Sizzy",
    "~/Library/Preferences/com.kitze.sizzy.plist",
    "~/Library/Saved Application State/com.kitze.sizzy.savedState",
  ]
end
