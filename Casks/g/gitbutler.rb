cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"
  arch_suffix = on_arch_conditional arm: "aarch64", intel: "x64"

  version "0.11.0,810"
  sha256 arm:   "e21d04c9dcb6796fd9ab0c530259aa473716dfb077dd3824aa7e8800caf678e9",
         intel: "c6d7dee5abbc17e698207a91cfb562d9e48a85de1c0d5ea7e2b8e8f199368897"

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
