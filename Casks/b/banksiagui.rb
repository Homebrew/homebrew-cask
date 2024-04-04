cask "banksiagui" do
  arch arm: "applesilicon", intel: "mac"

  version "0.58"
  sha256 arm:   "1f058c0371d6a912d943f5e03d007628d0e03ff039c3481a5101bab19fdee492",
         intel: "8b31f9e747fdaf8e468a712ab431b96a7c0d8ab16a451c1dd0f790d4bc9c5e40"

  url "https://banksiagui.com/dl/banksiagui-#{version}-#{arch}.zip"
  name "banksiagui"
  desc "Chess GUI"
  homepage "https://banksiagui.com/"

  livecheck do
    url "https://banksiagui.com/download/"
    regex(/banksiagui[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip/i)
  end

  app "banksiagui-#{version}/banksiagui.app"

  zap trash: [
    "~/Library/Preferences/softgaroo.banksia.plist",
    "~/Library/Saved Application State/softgaroo.banksia.savedState",
  ]
end
