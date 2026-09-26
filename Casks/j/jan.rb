cask "jan" do
  version "0.8.4"
  sha256 arm:          "2ae6e41073debe33c7d81ac2be3125c2fc8505756339d73df4be5e2b9372edf1",
         intel:        "2ae6e41073debe33c7d81ac2be3125c2fc8505756339d73df4be5e2b9372edf1",
         x86_64_linux: "34d4c8ab4da48ac22320d4b64c287445bd94c913129492d1dbebb36665b1495a"

  on_macos do
    url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.zip"

    app "Jan.app"

    zap trash: [
      "~/Library/Application Support/Jan",
      "~/Library/Preferences/jan.ai.app.plist",
      "~/Library/Saved Application State/jan.ai.app.savedState",
    ]
  end
  on_linux do
    url "https://github.com/janhq/jan/releases/download/v#{version}/Jan_#{version}_amd64.AppImage"

    depends_on arch: :x86_64

    app_image "Jan_#{version}_amd64.AppImage", target: "Jan.AppImage"

    zap trash: [
      "~/.config/Jan",
      "~/.local/share/Jan",
    ]
  end

  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
