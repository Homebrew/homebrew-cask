cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.1"
  sha256 arm:          "12cc87c810dab5cb7e8d2c2d525e9ef1126bdf8bb503bf66b13b25d9e44e8f5e",
         intel:        "93f5a9cdaef6d0c251c4072d8590233b6088504ddbe2dec782ca039524a86ee2",
         arm64_linux:  "e7b26639b24a33d963dbd042a5719924812eb0a0db761bc3a78b6e0a2d1ec7e0",
         x86_64_linux: "73076c1577e59a8ce09ce3bd8b813f0b9c3128426c89db07185641613f809b69"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.motrix.native.sfl*",
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}-#{arch}.AppImage", target: "Motrix.AppImage"

    zap trash: "~/.config/Motrix"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}-#{arch}.#{os}"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "motrix@beta"
end
