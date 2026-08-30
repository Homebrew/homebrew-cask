cask "t3-code@nightly" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "0.0.37-nightly.20260830.1227"

  on_macos do
    sha256 arm:   "64419b7b8079dc3108d6b38033cc47f682888d67624899460e7d95a6cb664552",
           intel: "acb4e73f4bd6abbdaff4490d8771a285495080d3c404c986fc1f14a5c1bf0103"

    auto_updates true
    depends_on macos: :monterey

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
    sha256 "34cca58e05e0b0837d5edf1ed9eba768b05a90cd47e09ee24b37259b27b369cb"

    depends_on arch: :x86_64

    app_image "T3-Code-#{version}-#{arch}.AppImage", target: "T3 Code Nightly.AppImage"
  end

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.#{os}"
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
