cask "leader-key" do
  version "1.12.0"
  sha256 "9d66a67bad858191223f736fde0127f7eb80d8a6c001aaf95cef39ba6efc0024"

  url "https://github.com/mikker/LeaderKey.app/releases/download/v#{version}/Leader.Key.app.zip"
  name "Leader Key"
  desc "Application launcher"
  homepage "https://github.com/mikker/LeaderKey.app"

  livecheck do
    url "https://mikker.github.io/LeaderKey.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Leader Key.app"

  zap trash: "~/Library/Application Support/Leader Key"
end
