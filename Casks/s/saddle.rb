cask "saddle" do
  version "1.2"
  sha256 "aebc612cb791c46a07eee98947587282e4ba3a0d36020ed69cc4865f7cfc4267"

  url "https://github.com/smandable/Saddle/releases/download/v#{version}/Saddle-#{version}.dmg"
  name "Saddle"
  desc "Menu bar app for managing external drives on macOS"
  homepage "https://github.com/smandable/Saddle"

  depends_on macos: ">= :ventura"

  app "Saddle.app"

  zap trash: [
    "~/Library/Application Support/Saddle",
  ]
end
