cask "candybar" do
  version "3.3.4"
  sha256 "f305596f195445016b35c9d99a40789c6671195e9cbad0b6e92e808b6c633ad6"

  url "https://download.panic.com/candybar/CandyBar%20#{version}.zip"
  name "CandyBar"
  desc "Tool to modify file icons"
  homepage "https://panic.com/blog/candybar-mountain-lion-and-beyond/"

  deprecate! date: "2023-12-17", because: :discontinued

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
