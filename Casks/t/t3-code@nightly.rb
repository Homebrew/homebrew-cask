cask "t3-code@nightly" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "0.1.14-nightly.20261128.5399"
  sha256 arm:          "84f1dc29a8fc32ffdf0d6ab0bfc36a888a149e1c00f9c5ebf57ac12635d098d5",
         intel:        "90d3925331a0a3470ab398d543bf17220838b2e4fc3f3e6046266316860713ca",
         arm64_linux:  "68d6afa18cc74797a9c2c2d53361f13a33e3acffd7718fe655f77f421de8e26f",
         x86_64_linux: "79938325ce9242157e4cb91d3b36e70849404998a63931d7210e6efb2ed6db64"

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
