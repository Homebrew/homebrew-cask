cask "t3-code" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "0.1.10"
  sha256 arm:          "ba7beff605bf080bb46ad9c02c07dc7ccbb4c96da2dfedc268bdbcd99f5f1dff",
         intel:        "592de59810ad24646125bef557e47cb6f108f5e18ea570e44a182e414abf10ad",
         arm64_linux:  "592de59810ad24646125bef557e47cb6f108f5e18ea570e44a182e414abf10ad",
         x86_64_linux: "7cded13c10757153901edddac9a2608b156f17445de506ef9ffdf73c01528d79"

  on_macos do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg"

    auto_updates true
    depends_on macos: :ventura

    app "T3 Code (Beta).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.t3tools.t3code.sfl*",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Application Support/t3code-v2",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end
  on_linux do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{arch}.AppImage"

    app_image "T3-Code-#{arch}.AppImage", target: "T3 Code.AppImage"

    zap trash: [
      "~/.config/T3 Code (Alpha)",
      "~/.config/t3code",
      "~/.config/t3code-v2",
      "~/.local/share/applications/com.t3tools.T3Code.desktop",
      "~/.local/share/icons/com.t3tools.T3Code.desktop.png",
      "~/.local/share/icons/hicolor/256x256/apps/com.t3tools.T3Code.png",
      "~/.local/share/icons/hicolor/256x256/apps/com.t3tools.t3code.png",
      "~/.t3/bin",
      "~/.t3/caches",
      "~/.t3/usage-host-id",
      "~/.t3/userdata",
    ]
  end

  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
