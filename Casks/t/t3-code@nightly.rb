cask "t3-code@nightly" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "0.1.11-nightly.20261119.4941"
  sha256 arm:          "9bb61428dcf3e7801afe6e82a55794b4ea394e4b8939b02004af78b496f57a3c",
         intel:        "70be2ddef53b6598724df5ed3d97da083dd7e9d052771d87eca58309a251ebfa",
         x86_64_linux: "c747562c9f04256dd70f4883204325ba1d4246726b2d85e253a3037b9168339b"

  on_macos do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg"

    auto_updates true
    depends_on macos: :ventura

    app "T3 Code (Nightly).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.t3tools.t3code.sfl*",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end
  on_linux do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-Nightly-#{arch}.AppImage"

    depends_on arch: :x86_64

    app_image "T3-Code-Nightly-#{arch}.AppImage", target: "T3 Code Nightly.AppImage"

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

  name "T3 Code Nightly"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url "https://github.com/pingdotgg/t3code/releases"
    regex(/(\d+(?:\.\d+)+-nightly\.\d{8}\.\d+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end
end
