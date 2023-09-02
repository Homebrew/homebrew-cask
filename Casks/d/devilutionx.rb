cask "devilutionx" do
  version "1.5.1"
  sha256 "dbff0787da57ed05da4830ad26f2a09aaf88b99c349003abd72a43fb8b7dd552"

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
