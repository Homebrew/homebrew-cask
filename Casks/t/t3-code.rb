cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 arm:   "f50f4f33dc1b70369a16c97309bfc9a534a9eaddabad7b8040b2e891538ddf32",
           intel: "e1f89635435922c87150da41d2d69abe5d69b60fba6678be62c36fae24af7a05"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Alpha).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end

  on_linux do
    sha256 "4274f6b6aa36ef1946d4a1c95e32653481007c00d09df727aa31aa6e9c9ffbc9"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code.AppImage"
  end
end
