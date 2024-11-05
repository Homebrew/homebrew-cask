cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.11"
  sha256 arm:   "735d2ff32306c34b3d1151fa7f645d93bd596bd9459b65f21f321ef75824237d",
         intel: "b75e6e592adf4ca474230c72fc8fab0c54ed641b1772e6f36a92d78f87ea10a8"

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
