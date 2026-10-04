cask "littlebird" do
  arch arm: "arm64", intel: "x64"

  version "0.85.5"

  on_arm do
    sha256 "2d47c50827e0e23f03a8d50a9a7e0442fae502c522a2a17a82a04ec278aa8290"

    url "https://downloads.littlebird.ai/#{arch}/Littlebird-Mac-#{arch}-#{version}-Installer.dmg"
  end
  on_intel do
    sha256 "e8cdfd4aaa26c77e36cd6a3ef6ac9eb7f2a7a4be588452749e898d043e1f4e58"

    url "https://downloads.lilbirdai.com/#{arch}/Littlebird-Mac-#{arch}-#{version}-Installer.dmg"
  end

  name "Littlebird"
  desc "AI assistant that captures meetings and work context"
  homepage "https://littlebird.ai/"

  livecheck do
    url "https://downloads.littlebird.ai/arm64/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Littlebird.app"

  uninstall quit: "com.genos.littlebird"

  zap trash: [
    "~/Library/Application Support/@littlebird",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.genos.littlebird.sfl*",
    "~/Library/Application Support/com.genos.contextkit-cli",
    "~/Library/Application Support/Littlebird",
    "~/Library/Caches/com.genos.contextkit-cli",
    "~/Library/HTTPStorages/com.genos.contextkit-cli",
    "~/Library/Logs/@littlebird",
    "~/Library/Logs/Littlebird",
    "~/Library/Preferences/com.genos.littlebird.plist",
  ]
end
