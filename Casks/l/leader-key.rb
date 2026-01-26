cask "leader-key" do
  version "1.17.3"
  sha256 "07fabeef4a0704b7568f323389b509d3ff5f79df6f8b59f27abec1174886346f"

  url "https://github.com/mikker/LeaderKey/releases/download/v#{version}/Leader.Key.app.zip"
  name "Leader Key"
  desc "Application launcher"
  homepage "https://github.com/mikker/LeaderKey"

  livecheck do
    url "https://mikker.github.io/LeaderKey/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Leader Key.app"

  zap trash: "~/Library/Application Support/Leader Key"
end
