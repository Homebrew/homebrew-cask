cask "deltawalker" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "b1ec0b9bb355b934fce2f38ab471f3b885ed73018c11a39bea1d3736e1a55726",
         intel: "21abf7076556c86baa13d47dc0934658126cda734ff08703c029d1fd193c24f9"

  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}_#{arch}.dmg",
      verified: "deltawalker.s3.amazonaws.com/"
  name "DeltaWalker"
  desc "Tool to compare and synchronise files and folders"
  homepage "https://www.deltawalker.com/"

  livecheck do
    url "https://www.deltawalker.com/download"
    regex(/href=.*?DeltaWalker[._-]?v?(\d+(?:\.\d+)+)_#{arch}\.dmg/i)
  end

  app "DeltaWalker.app"

  uninstall script: {
    executable:   "#{staged_path}/run-me-first.command",
    sudo:         false,
    must_succeed: false,
  }

  zap trash: [
    "~/Library/Caches/com.deltopia.DeltaWalker",
    "~/Library/Containers/com.deltopia.DeltaWalker",
    "~/Library/Preferences/com.deltopia.DeltaWalker.plist",
    "~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState",
  ]
end
