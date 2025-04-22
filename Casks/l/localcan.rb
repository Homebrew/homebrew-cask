cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 intel: "92e1b87c36483fce22a39eb638baf5cc7d158618befa15152c936bba4a2db64f",
         arm:   "cf762c2a950b1ec599dcf170f97fb48359884830c84616f26e75f77bcfdc4e56"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
