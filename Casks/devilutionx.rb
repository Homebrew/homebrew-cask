cask "devilutionx" do
  version "1.4.1"
  sha256 "cba8f68cefa11554e5ce3907899cb777517a0841dad1b7c2128d62175f4fa344"

  url "https://github.com/diasurgical/devilutionX/releases/download/#{version}/devilutionx-macos-universal.zip"
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
