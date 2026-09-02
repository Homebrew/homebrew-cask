cask "audacity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x86_64", linux: "x64")
  os macos: "macOS", linux: "linux"
  ubuntu_version = on_system_conditional linux: "-22.04"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.7.9"
  sha256 arm:          "fafeb7fa963d3e2ba05ee7aba5290c966362ac5f5feca86eb8b1f61c7819d499",
         intel:        "142f3900bea5d49a73e66cce06e156b8e5387643e1b718806e85286753d6294f",
         x86_64_linux: "e03f51163e370277039c2f2f665376a86b56aa51c9056aba00f8712d889ed654"

  on_macos do
    app "Audacity.app"

    uninstall quit: "org.audacityteam.audacity"

    zap trash: [
      "~/Library/Application Support/audacity",
      "~/Library/Preferences/org.audacityteam.audacity.plist",
      "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "audacity-linux-#{version}-#{arch}#{ubuntu_version}.AppImage", target: "Audacity.AppImage"
  end

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-#{os}-#{version}-#{arch}#{ubuntu_version}.#{url_end}"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
