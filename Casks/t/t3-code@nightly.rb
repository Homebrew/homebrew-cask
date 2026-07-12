cask "t3-code@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29-nightly.20260712.791"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
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

  on_macos do
    sha256 arm:   "44c1de6efdaac503df55c7d70ae789ea16f40ac5062101d18da366b8f6a0d2a3",
           intel: "466cdbc40aa3c24ebf218e893586d1221fdee2e26f74f8f245808dcff1291b9a"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Nightly).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end

  on_linux do
    sha256 "4db3668909e6417ee4aad852baa48ac6bc814e25b69c5bc33a5aa355c0cbc3c2"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code Nightly.AppImage"
  end
end
