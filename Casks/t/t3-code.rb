cask "t3-code" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "0.1.13"
  sha256 arm:          "dfdc4e87a7e56ac11fb5c7ec3cf608db854b3e9c4f755acc75b13f266a9478fa",
         intel:        "cda3b96851cd2eceaab33ba8a96357a2644710d970c145ec6770e4924b3e36a2",
         arm64_linux:  "47156eade4d3e8c635554f859a590e15614d63b6d9792dd7684bdecae365ec41",
         x86_64_linux: "dac1bbe9e93c1a5fb0942332befa998597f6a086232a87766ef5d8235a44f56d"

  on_macos do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg"

    depends_on macos: :ventura

    app "T3 Code (Beta).app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.t3tools.t3code.sfl*",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Application Support/t3code-v2",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/Caches/t3code-updater",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end
  on_linux do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{arch}.AppImage"

    conflicts_with cask: "t3-code@nightly"

    app_image "T3-Code-#{arch}.AppImage", target: "T3 Code.AppImage"

    zap trash: [
      "~/.cache/t3code-updater",
      "~/.config/T3 Code (Alpha)",
      "~/.config/t3code",
      "~/.config/t3code-v2",
      "~/.local/share/applications/com.t3tools.T3Code.desktop",
      "~/.local/share/icons/com.t3tools.T3Code.desktop.png",
      "~/.local/share/icons/hicolor/256x256/apps/com.t3tools.T3Code.png",
      "~/.local/share/icons/hicolor/256x256/apps/com.t3tools.t3code.png",
    ]
  end

  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
