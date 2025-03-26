cask "simpletex" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "0.2.10"
  sha256 arm:   "57ba9b00bcc1aa89f8de78b2b775370f28bb4e3ca7cb1e839085e1f26355b64a",
         intel: "95d60496b55b31233916d8f6ceac53fc885dbfb64de99ba04098f882dcea78cd"

  url "https://update.simpletex.net/publish/electron/darwin/SimpleTex-#{version}#{arch}.dmg"
  name "SimpleTex"
  desc "Formula snipping and recognition app"
  homepage "https://simpletex.net/"

  livecheck do
    url "https://simpletex.cn/download_mac_#{livecheck_arch}_url"
    regex(/SimpleTex[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "SimpleTex.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.spt.simpletex.sfl*",
    "~/Library/Application Support/SimpleTex",
    "~/Library/Preferences/com.spt.SimpleTex.plist",
    "~/Library/Saved Application State/com.spt.SimpleTex.savedState",
  ]
end
