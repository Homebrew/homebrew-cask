cask "eightbitdo-ultimate-software-v2" do
  version "1.0.11"
  sha256 "a06ed63f5d5917f884e72c41aefbacd829b1fb16646bdcbf448539bf2c185342"

  on_monterey :or_newer do
    app "8BitDo Ultimate Software V2.app"

    zap trash: [
      "~/Library/Application Support/com.8BitDo.UltimateV2",
      "~/Library/Caches/com.8BitDo.UltimateV2",
      "~/Library/Preferences/com.8BitDo.UltimateV2.plist",
      "~/Library/Saved Application State/com.8BitDo.UltimateV2.savedState",
    ]
  end

  url "https://download.8bitdo.com/Ultimate-Software/8BitDo_Ultimate_Software_V2_macOS_V#{version}.zip"
  name "8BitDo Ultimate Software V2"
  desc "Configuration software for 8BitDo Ultimate controllers"
  homepage "https://www.8bitdo.com/"

  livecheck do
    url "https://app.8bitdo.com/Ultimate-Software-V2/"
    regex(/macOS[._-]v?(\d+(?:\.\d+)+)/i)
  end
end
