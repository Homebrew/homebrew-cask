cask "candybar" do
  version "3.5"
  sha256 :no_check

  url "https://files.iconfactory.net/software/CandyBar-SFE.zip"
  name "CandyBar"
  desc "Tool to manage file icons"
  homepage "https://blog.iconfactory.com/2022/04/candybar-sugar-free-edition/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "CandyBar.app"

  zap trash: [
    "~/Library/Application Support/CandyBar",
    "~/Library/Caches/Cleanup At Startup/CandyBar",
    "~/Library/Caches/com.panic.CandyBar3",
    "~/Library/Preferences/com.panic.CandyBar3.plist",
    "~/Library/Saved Application State/com.panic.CandyBar3.savedState",
  ]

  caveats do
    free_license "https://panic.com/bin/setup.php/cb3/PPQA-YAMA-E3KP-VHXG-B6AL-L"
  end
end
