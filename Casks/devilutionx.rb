cask "devilutionx" do
  version "1.4.0"
  sha256 "e3aeeffce76dcac935bcc1ac8ed5e8757668d1728c4ceee2eed562b6e9f51661"

  url "https://github.com/diasurgical/devilutionX/releases/download/#{version}/devilutionx-macos-x86_64.dmg"
  name "DevilutionX"
  desc "Diablo build for modern operating systems"
  homepage "https://github.com/diasurgical/devilutionX/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "devilutionx.app"

  zap trash: [
        "~/Library/Application Support/CrashReporter/devilutionX_*.plist",
        "~/Library/Application Support/diasurgical/devilution",
      ],
      rmdir: "~/Library/Application Support/diasurgical"
end
