cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"
  url_end = on_system_conditional macos: "mac-#{arch}.zip", linux: "#{arch}.AppImage"

  version "2.3.1.2781"
  sha256 arm:          "dcbc94f97aab359e6aa2fc4d40d3b08c6d83973b85fa08e761b6c99dd4280842",
         intel:        "aa3c2d7e94220c412947afeab9fdc5fd7c95885b408d8beded831467d0978f01",
         arm64_linux:  "826e15a1307806919771de317eb1962173a37528e8fe0d26aa3e30268e9f0eb4",
         x86_64_linux: "75870dd1d827bf2612f6a9b20a56083ede9ce6b65d4af411e288bad95156e233"

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
