cask "claude-devtools" do
  arch arm: "-arm64", intel: "-x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "-x86_64.AppImage"

  version "0.5.0"

  on_macos do
    sha256 arm:   "f37ec018a4052aa7b73e8ece741cf864bd2ee20c0e25b911211616f672bef441",
           intel: "886f7159620f14f3451bfbdb0fc2e473bfc2d0dcf415d597f5a715f6856dd7f1"

    depends_on macos: :monterey

    app "claude-devtools.app"

    zap trash: [
      "~/Library/Application Support/claude-devtools",
      "~/Library/Caches/com.claudecode.context",
      "~/Library/Preferences/com.claudecode.context.plist",
    ]
  end
  on_linux do
    sha256 "9f91a8aa42a836b88c2cdab58f040154bb1af9eb1f1be04080ba511a23ac0efc"

    depends_on arch: :x86_64

    app_image "claude-devtools-#{version}-x86_64.AppImage", target: "Claude DevTools.AppImage"
  end

  url "https://github.com/matt1398/claude-devtools/releases/download/v#{version}/claude-devtools-#{version}#{url_end}"
  name "Claude DevTools"
  desc "Visualise and analyse Claude Code session executions"
  homepage "https://github.com/matt1398/claude-devtools"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
