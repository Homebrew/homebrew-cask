cask "siyuan" do
  version "1.1.83"

  if Hardware::CPU.intel?
    sha256 "e3d602b82b2af2987c7c26589a94a98cc9c11b7f8789b5dc574df805791737e9"
    url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac.dmg"
  else
    sha256 "28700a13550eda4637ce3119642bcb36860205fa4f0661b7a0fe2ea93678a106"
    url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac-arm64.dmg"
  end

  name "siyuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
    "~/.siyuan",
  ]
end
