cask "capslocknodelay" do
  version "1.0.8"
  sha256 "2775a9cd703fbf5952c6ad3c6df14e5a068d9b9ce7b9fd631282b538869baaa2"

  url "https://github.com/gkpln3/CapsLockNoDelay/releases/download/V#{version}/CapsLockNoDelay.dmg"
  name "CapsLockNoDelay"
  desc "Removes delay when pressing the caps lock"
  homepage "https://github.com/gkpln3/CapsLockNoDelay"

  depends_on macos: ">= :catalina"

  app "CapsLockNoDelay.app"

  uninstall quit: "gkpln3.CapsLockNoDelay"

  zap trash: "~/Library/Containers/gkpln3.CapsLockNoDelay"
end
