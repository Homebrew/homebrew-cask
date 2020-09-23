cask "gitx" do
  version "0.16.2327"
  sha256 "c8dd6dcac8dd85808acdb937f3125bf67b2b1c2b36da5541f20de73628abf544"

  url "https://github.com/gitx/gitx/releases/download/builds/#{version.major_minor}/#{version.patch}/GitX-dev-#{version.patch}.dmg"
  appcast "https://github.com/gitx/gitx/releases.atom"
  name "GitX"
  desc "GUI for git"
  homepage "https://github.com/gitx/gitx"

  conflicts_with cask: [
    "laullon-gitx",
    "rowanj-gitx",
  ]

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
