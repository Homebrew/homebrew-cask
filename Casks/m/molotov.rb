cask "molotov" do
  arch arm: "-arm64"
  arch_folder = on_arch_conditional arm: "m1/"

  on_arm do
    version "6.0.1"
    sha256 "648a1cd4496a23272f10f3af2dc901b3c356933fbc25fbc9b0732c52eeccf5b8"
  end
  on_intel do
    version "6.0.2"
    sha256 "d2eaeb287dc237266b507a8ff603ca108b0cc2cbe06b82567f5b382f65a0988a"
  end

  url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}Molotov-#{version}-mac.zip"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}manifest.json"
    regex(%r{/Molotov-v?(\d+(?:\.\d+)+)-mac\.zip}i)
  end

  depends_on macos: ">= :catalina"

  app "Molotov.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/tv.molotov.molotovdesktopapp.sfl*",
    "~/Library/Application Support/molotov",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/tv.molotov.MolotovDesktopApp",
    "~/Library/Logs/molotov",
    "~/Library/Preferences/tv.molotov.MolotovDesktopApp.plist",
    "~/Library/Saved Application State/tv.molotov.MolotovDesktopApp.savedState",
  ]
end
