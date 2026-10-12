cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"
  url_end = on_system_conditional macos: "mac-#{arch}.zip", linux: "#{arch}.AppImage"

  version "2.2.1.2706"
  sha256 arm:          "778fb26e36b3c70eeda75220103f5f2874cbf3627d3a300f01d9626f86cc3b64",
         intel:        "211c66696980bce54824c001aa18d39cf8af8d7095ef3ee139ce652b47120fd6",
         arm64_linux:  "1584d39a338e2243ce0d08e589703ac1c265e7a2ab9a9090e2e2ff8e431977e1",
         x86_64_linux: "c333b6545c2e47463df26494c7c5496adf4d9a0c1dd8be5bcba654b04348b46c"

  on_macos do
    depends_on macos: :sonoma

    app "CrossPaste.app"

    uninstall launchctl: "com.crosspaste.mac"

    zap trash: [
      "~/Library/Application Support/CrossPaste",
      "~/Library/HTTPStorages/com.crosspaste.mac",
      "~/Library/HTTPStorages/com.crosspaste.mac.binarycookies",
      "~/Library/LaunchAgents/com.crosspaste.mac.plist",
      "~/Library/Preferences/com.crosspaste.mac.plist",
    ]
  end
  on_linux do
    app_image "crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-#{arch}.AppImage",
              target: "CrossPaste.AppImage"
  end

  url "https://github.com/CrossPaste/crosspaste-desktop/releases/download/#{version}/crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-#{url_end}"
  name "CrossPaste"
  desc "Universal Pasteboard Across Devices"
  homepage "https://crosspaste.com/en/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
