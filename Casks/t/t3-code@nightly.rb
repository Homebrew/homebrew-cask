cask "t3-code@nightly" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "0.1.12-nightly.20261123.5165"
  sha256 arm:          "90a8ea68f3c51d99c4cd790ac0ab1b8c2660dfbe598819628768fb23e1ce75d0",
         intel:        "2efa21c9fe62391747ab3a4ddccdc3f54c9840c0dc596ae27d553af7d224da03",
         x86_64_linux: "e52980d958f22a06648aec0f7c694f782d98978e54d1e8034bfe989e7a457f34"

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
