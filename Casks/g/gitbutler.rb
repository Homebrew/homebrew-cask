cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"
  arch_suffix = on_arch_conditional arm: "aarch64", intel: "x64"

  version "0.12.14,1108"
  sha256 arm:   "6bc6eedaa2db2b6b800781c33c2389d3e0eb635d39dd6c09c9ddb4817427df5b",
         intel: "ac55cfc3bdf64ad33815e62a4739dae4485eed4d404c5443f09e4d4ba36b8a48"

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
