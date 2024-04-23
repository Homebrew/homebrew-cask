cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"
  arch_suffix = on_arch_conditional arm: "aarch64", intel: "x64"

  version "0.11.4,847"
  sha256 arm:   "ef50e280e8119d578fbb32e2e9072fa2a310fe340fd9ae1a956e7edb7b52d597",
         intel: "54d92d325845ae914127c2b7c075fce41f7d71919a7935ce47d8bc3eeece841c"

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
