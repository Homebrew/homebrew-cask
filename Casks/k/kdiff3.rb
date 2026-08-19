cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x86_64"

  version "1.12.6"
  sha256 arm:   "e80b3a304a6896d6906a930e72b0760bbd6d6dcb3392c842e15f14867c28f136",
         intel: "f0a0189f55d539cdd695497df18104a2698c2f1f4c1d7632fbd99257f39abea0"

  url "https://download.kde.org/stable/kdiff3/kdiff3-#{version}-macos-#{arch}.dmg"
  name "KDiff3"
  desc "Utility for comparing and merging files and directories"
  homepage "https://invent.kde.org/sdk/kdiff3"

  livecheck do
    url "https://download.kde.org/stable/kdiff3/"
    regex(/href=["']?kdiff3[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :ventura

  app "kdiff3.app"
  command_wrapper "kdiff3",
                  executable: "#{appdir}/kdiff3.app/Contents/MacOS/kdiff3"

  zap trash: [
    "~/.kdiff3rc",
    "~/Library/Application Support/kdiff3",
    "~/Library/Preferences/kdiff3rc",
  ]
end
