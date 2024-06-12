cask "candybar" do
  on_catalina :or_older do
    version "3.3.4"
    sha256 "f305596f195445016b35c9d99a40789c6671195e9cbad0b6e92e808b6c633ad6"

    url "https://download.panic.com/candybar/CandyBar%20#{version}.zip",
        verified: "download.panic.com/candybar/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.5"
    sha256 :no_check

    url "https://files.iconfactory.net/software/CandyBar-SFE.zip",
        verified: "files.iconfactory.net/software/"

    livecheck do
      url :url
      strategy :extract_plist
    end
  end

  name "CandyBar"
  desc "Tool to manage file icons"
  homepage "https://blog.iconfactory.com/2022/04/candybar-sugar-free-edition/"

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
