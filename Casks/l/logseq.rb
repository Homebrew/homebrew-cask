cask "logseq" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.1"
  sha256 arm:          "b76af25384f8aaa0ba322f8b5523aea712d9750d9f3e79cac55dc783796439cd",
         intel:        "d94ab1223db5e6d75d073b938eb0bf4606f3b2a9b37f307b91dba1322c8d34c2",
         arm64_linux:  "a701e13a1e392e4eac1d1f73cdf20a04fdb26bd3a155360f2345741ebf1f64b4",
         x86_64_linux: "49de367078b37670febdb987e562b75dee1e1ae96c28bfb8738779c42297dd0c"

  on_macos do
    depends_on macos: :monterey

    app "Logseq.app"

    zap trash: [
      "~/Library/Application Support/Logseq",
      "~/Library/Logs/Logseq",
      "~/Library/Preferences/com.electron.logseq.plist",
      "~/Library/Saved Application State/com.electron.logseq.savedState",
    ]
  end
  on_linux do
    app_image "Logseq-linux-#{arch}-#{version}.AppImage", target: "Logseq.AppImage"

    zap trash: [
      "~/.config/Logseq",
      "~/.logseq",
    ]
  end

  url "https://github.com/logseq/logseq/releases/download/#{version}/Logseq-#{os}-#{arch}-#{version}.#{url_end}"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
