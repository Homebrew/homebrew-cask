cask "devilutionx" do
  version "1.4.1"
  sha256 "84de4c78ce7a84320ab251af791c490816c75d4bda423c6add1a3bb52327a0e1"

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
