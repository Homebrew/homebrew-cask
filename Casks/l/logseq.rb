cask "logseq" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.2"
  sha256 arm:          "b9a16b6ddef1659aa3c2301ce37a0336377644bbf1016051e3d19d1a66776314",
         intel:        "7c3682b2e73ac69f531012e37f09633a4200abc3de54efca630fa6aafefc27a9",
         arm64_linux:  "371d1c9e66e6ade39e71bc60ab4d49458c83812f143b939ae26ba39663651634",
         x86_64_linux: "1335725626f6cbfbf3b00b7743a60356d2d7dad123cf00bbf974a9beef556870"

  on_macos do
    depends_on macos: :monterey

    app "Logseq.app"

    zap trash: [
      "~/.logseq",
      "~/Library/Application Support/Logseq",
      "~/Library/Logs/Logseq",
      "~/Library/Preferences/com.electron.logseq.plist",
      "~/Library/Saved Application State/com.electron.logseq.savedState",
      "~/logseq",
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
