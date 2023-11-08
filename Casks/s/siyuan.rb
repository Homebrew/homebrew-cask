cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.14"
  sha256 arm:   "7eae6b43edee14153f37a4766179f165b12dc078fbb6916c748a440ffe6154b7",
         intel: "26e6d6b2558cd26500970b71282e54fe5be34248526262cd1365097e1aedb068"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
