cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.28"

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
    sha256 arm:   "e91072fc84ae8ade0e2b73fbe0520e8fdfbe2b98cb1561783e6d995d7d944d14",
           intel: "d860e9a9aca8b9e69c9586b0485d2b5fa8415b8f0fa655f2e8d7674db48127ab"

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
    sha256 "db7b9aba6b3bd3859e5e2d88f3fc55849fde8f5ff538def623be6caf0ff838cc"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code.AppImage"
  end
end
