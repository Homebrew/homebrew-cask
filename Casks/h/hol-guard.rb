cask "hol-guard" do
  version "3.0.97"
  sha256 "852d0697a9865322053f6f8f0e276c3baf30c6e65051658af474ce3413959a54"

  url "https://hol.org/api/guard/desktop/download?platform=macos&version=#{version}"
  name "HOL Guard"
  desc "Local-first runtime firewall for AI coding agents"
  homepage "https://hol.org/guard"

  livecheck do
    url "https://hol.org/guard/install"
    regex(/HOL-Guard-Desktop[._-]v?(\d+(?:\.\d+)+)[._-]aarch64/i)
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "HOL Guard.app"

  uninstall quit: "org.hol.guard.desktop"

  zap trash: [
    "~/.hol-guard",
    "~/Library/Application Support/org.hol.guard.desktop",
    "~/Library/Caches/org.hol.guard.desktop",
    "~/Library/Preferences/org.hol.guard.desktop.plist",
    "~/Library/Saved Application State/org.hol.guard.desktop.savedState",
    "~/Library/WebKit/org.hol.guard.desktop",
  ]
end
