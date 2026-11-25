cask "t3-code@nightly" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "0.1.13-nightly.20261125.5245"
  sha256 arm:          "1f0f19b883ce10a5dd12a70f0d10660e6248a8193756c872c1e73866f613ad52",
         intel:        "0b0178f94bad85ba24359fd8dc31819a503c0209d874d2e017f8d20b259fe7f5",
         arm64_linux:  "b228cca0fb1d315d5929f300d05f70172a37acd1b4c67ce5e144c341ec5bab71",
         x86_64_linux: "5d8a5a0027b943f929b0589677a75552945e430843c11f3552e15225b8111d48"

  on_macos do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg"

    depends_on macos: :ventura

    app "T3 Code (Nightly).app"

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
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-Nightly-#{arch}.AppImage"

    conflicts_with cask: "t3-code"

    app_image "T3-Code-Nightly-#{arch}.AppImage", target: "T3 Code Nightly.AppImage"

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

  auto_updates true
end
