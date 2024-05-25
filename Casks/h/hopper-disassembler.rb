cask "hopper-disassembler" do
  version "5.15.6"
  sha256 "9c85aded5ff3ca500868927c4462775ab9f1d25bb66a90ff0b6cfdd50d375691"

  url "https://www.hopperapp.com/downloader/hopperv4/Hopper-#{version}-demo.dmg",
      user_agent: :fake
  name "Hopper Disassembler"
  desc "Reverse engineering tool that lets you disassemble, decompile and debug your app"
  homepage "https://www.hopperapp.com/"

  livecheck do
    skip "Cannot get version info unless livecheck can specify user_agent"
  end

  depends_on macos: ">= :high_sierra"

  app "Hopper Disassembler v4.app"

  zap trash: [
    "~/Library/Application Support/Hopper Disassembler v4",
    "~/Library/Application Support/Hopper",
    "~/Library/Caches/com.cryptic-apps.hopper-web-4",
    "~/Library/Preferences/com.cryptic-apps.hopper-web-4.plist",
    "~/Library/Saved Application State/com.cryptic-apps.hopper-web-4.savedState",
  ]
end
