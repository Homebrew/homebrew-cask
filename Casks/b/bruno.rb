cask "bruno" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.2.1"
  sha256 arm:          "357eabcc8c422a5d62bd64f5c4075a74dd6b72c40135141a521d54a170b0778d",
         intel:        "4316d0f19c983e52c22e6dfd8cabe503865761f8210d9a45dba4fb3e1be7f502",
         arm64_linux:  "3f5d0f5bebd3d7cf34d3301ba2fed9ccabd866d0ad615faf7307da9e9b56f18d",
         x86_64_linux: "f6b77dc322dd57b953781589a44688723cf3c06a3513c5c34d077cd75d64a941"

  on_macos do
    auto_updates true

    app "Bruno.app"

    zap trash: [
      "~/Library/Application Support/bruno",
      "~/Library/Preferences/com.usebruno.app.plist",
      "~/Library/Saved Application State/com.usebruno.app.savedState",
    ]
  end
  on_linux do
    app_image "bruno_#{version}_#{arch}_linux.AppImage", target: "Bruno.AppImage"
  end

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_#{os}.#{url_end}"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
