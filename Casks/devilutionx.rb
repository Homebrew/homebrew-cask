cask "devilutionx" do
  version "1.5.0"
  sha256 "f01395922450a6af4ae257bb61a1f0b0e72a34267b07a42143d2c348484c10d8"

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
