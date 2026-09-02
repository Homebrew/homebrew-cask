cask "chatall" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.85.110"
  sha256 arm:          "6ee01d013d9b6f871ddbf9ab4518594b8e4c503f6f5d5c9f8a8bdd1cbf413855",
         intel:        "8fe8ab4efc0d1a725e79765ad7b9a53b48be0432f96b3791f8e9beedd5cecf08",
         arm64_linux:  "60b5db7f108b685190a82b87827e2d740a2acb0b7537ffe8b56d6a43c91f7449",
         x86_64_linux: "aec84550ec808b8e2902ddd4d74d99df1ecf51bf13d25372806167594b643c4d"

  on_macos do
    depends_on macos: :big_sur

    app "ChatALL.app"

    zap trash: [
      "~/Library/Application Support/ChatALL",
      "~/Library/Caches/ai.chatall",
      "~/Library/Preferences/ai.chatall.plist",
      "~/Library/Saved Application State/ai.chatall.savedState",
    ]
  end
  on_linux do
    app_image "ChatALL-#{version}-linux-#{arch}.AppImage", target: "ChatALL.AppImage"
  end

  url "https://github.com/sunner/ChatALL/releases/download/v#{version}/ChatALL-#{version}-#{os}-#{arch}.#{url_end}"
  name "ChatALL"
  desc "Concurrently chat with ChatGPT, Bing Chat, Bard, Claude, ChatGLM and more"
  homepage "https://github.com/sunner/ChatALL"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
