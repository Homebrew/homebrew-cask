cask "capsomnia" do
  version "4.0.0"
  sha256 "db728c2cd057976e080ba746adfa2683522d93c8621cb2252ba3e3d51278f23b"

  url "https://github.com/fuji-mak/Capsomnia/releases/download/v#{version}/Capsomnia-#{version}.pkg"
  name "Capsomnia"
  desc "Keep-awake switch for closed-lid work, toggled with Caps Lock"
  homepage "https://github.com/fuji-mak/Capsomnia/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  pkg "Capsomnia-#{version}.pkg"

  uninstall launchctl: "com.github.fuji-mak.capsomnia",
            pkgutil:   "com.github.fuji-mak.capsomnia.pkg",
            delete:    [
              "/etc/sudoers.d/capsomnia",
              "/Library/PrivilegedHelperTools/capsomnia-pmset",
            ]
end
