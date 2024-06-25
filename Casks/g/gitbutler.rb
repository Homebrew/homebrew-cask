cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"
  arch_suffix = on_arch_conditional arm: "aarch64", intel: "x64"

  version "0.12.6,1023"
  sha256 arm:   "ce2e0f9932fab6529548f0ad2e26f77616af2bd7e6a58a80b65b0e883f1369ee",
         intel: "a987179ccc47e258f217f92d918dfc31084eb52b22cd9556cbab3b097d87ed12"

  url "https://releases.gitbutler.com/releases/release/#{version.csv.first}-#{version.csv.second}/macos/#{arch}/GitButler_#{version.csv.first}_#{arch_suffix}.dmg"
  name "GitButler"
  desc "Git client for simultaneous branches on top of your existing workflow"
  homepage "https://gitbutler.com/"

  livecheck do
    url "https://app.gitbutler.com/downloads/release/darwin/#{arch}/dmg"
    regex(%r{/releases/release/(\d+(?:\.\d+)+)[._-](\d+)/macos}i)
    strategy :header_match do |headers|
      match = headers["location"]&.match(regex)

      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "GitButler.app"

  zap trash: [
    "~/Library/Application Support/com.gitbutler.app",
    "~/Library/Caches/com.gitbutler.app",
    "~/Library/Logs/com.gitbutler.app",
    "~/Library/Preferences/com.gitbutler.app.plist",
    "~/Library/Saved Application State/com.gitbutler.app.savedState",
    "~/Library/WebKit/com.gitbutler.app",
  ]
end
