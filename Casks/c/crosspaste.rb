cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"
  url_end = on_system_conditional macos: "mac-#{arch}.zip", linux: "#{arch}.AppImage"

  version "2.1.7.2461"

  on_macos do
    sha256 arm:   "6b2f5af679370eb0ec2f64cabbf350297a930efd0c276409e10417381c3b4d71",
           intel: "e4ae5b70c6254704a69294811ae00bf81c2bece9e96609780518b9dd8baf8d3d"

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
    sha256 arm64_linux:  "2a2ac468066572d4015f32346bec1c06284923ba9731877b7fd9dc547995f774",
           x86_64_linux: "d5ec65ce839383fdfa514c0fdb482d4a5a58bcf416732b41c6aa275f20349340"

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
