cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.9"
  sha256 arm:   "6d3661c70615a01501fba8555af5a595f1bc5985187d97befab578c6199ee97f",
         intel: "1334a1a4df38802c29793063821ba375989bfa52704afd4b8a15c3a0f8a967cd"

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
