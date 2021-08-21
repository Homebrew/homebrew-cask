cask "devilutionx" do
  version "1.2.1"
  sha256 "763fc36ab64edbfed04bfe63afa6e4e6666bfd3d13681b9f4496cc877aaaece1"

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

  zap trash: [
    "~/Library/Application Support/CrashReporter/devilutionX_*.plist",
    "~/Library/Application Support/diasurgical/devilution",
  ]
end
