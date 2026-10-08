cask "jan" do
  version "0.8.5"
  sha256 arm:          "dfd7b4f995da2798f72c62c61be088edfb487ed576ba8c9548069629e134c8e1",
         intel:        "dfd7b4f995da2798f72c62c61be088edfb487ed576ba8c9548069629e134c8e1",
         x86_64_linux: "690a9300774df41db07f8c30ec3729e103e18dedad689b6defbc53aa6565f377"

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
