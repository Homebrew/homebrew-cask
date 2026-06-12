cask "masscode" do
  arch arm: "-arm64"

  version "5.6.1"
  sha256 arm:   "f07665bbeed0a962a5eabdb12dda2554d6a7bfb2ae996c694552f11c0b708d16",
         intel: "4c6440847ebf09713ba46f9965a527819bf2b5bb6d5ceb471e3a77e706551c68"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
