cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "2.1.1"
    sha256 "5c347a2ce2cbee4b6bc94c680cbf73c7ac8a0d021806a379d55d60d662f1607c"
  end
  # missing amd64 build for 2.1.0,2.1.1 release
  # bug report, https://github.com/decred/decred-binaries/issues/163
  on_intel do
    version "2.0.6"
    sha256 "84a274f8139cf852762adc06ac9d0ed143eabdcf3316035ed1bc7ccf1af58efd"
  end

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-darwin-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"

  depends_on macos: ">= :big_sur"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
