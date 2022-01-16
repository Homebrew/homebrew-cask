cask "devilutionx" do
  version "1.3.0"
  sha256 "a121d354fbcb3a5911d50a8d71f452cccd72978b20ce39fc88ff6d155c3f5f48"

  url "https://github.com/diasurgical/devilutionX/releases/download/#{version}/devilutionx-mac-x86_64.dmg"
  name "DevilutionX"
  desc "Diablo build for modern operating systems"
  homepage "https://github.com/diasurgical/devilutionX/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "devilutionx.app"
  artifact "devilutionx.mpq",
           target: "#{ENV["HOME"]}/Library/Application Support/diasurgical/devilution/devilutionx.mpq"

  zap trash: [
    "#{ENV["HOME"]}/Library/Application Support/CrashReporter/devilutionX_*.plist",
    "#{ENV["HOME"]}/Library/Application Support/diasurgical/devilution/devilutionx.mpq",
  ],
      rmdir: "#{ENV["HOME"]}/Library/Application Support/diasurgical"
end
