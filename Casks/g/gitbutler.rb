cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"
  arch_suffix = on_arch_conditional arm: "aarch64", intel: "x64"

  version "0.10.11,640"
  sha256 arm:   "94f77c3b1adbbd5ea1799415df66c1f4ebc907829460426b592365b7c72d6d23",
         intel: "29ef052b2de6be20c6b467b67619e4b3822d48a79e45ff3094f1d5c18e364c0d"

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
