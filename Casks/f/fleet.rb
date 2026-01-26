cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.48.261"
  sha256 arm:   "09e0d68820830e3ef43161f1d3d39a5ff3075ae90b0bfaa48b9b33a6bcf5d4ae",
         intel: "5a0fddbdbd28f108ecaee818e3859028cf215a7aa001c04163fe3800fb6da1b6"

  url "https://download.jetbrains.com/fleet/installers/macos_#{arch}/Fleet-#{version}#{arch_suffix}.dmg"
  name "Fleet"
  desc "Hybrid IDE and text editor"
  homepage "https://www.jetbrains.com/fleet/"

  # https://blog.jetbrains.com/fleet/2025/12/the-future-of-fleet/
  disable! date: "2025-12-22", because: :no_longer_available

  app "Fleet.app"
  binary "#{appdir}/Fleet.app/Contents/app/bin/fleet"

  zap trash: [
    "~/.fleet",
    "~/Library/Application Support/JetBrains/Fleet",
    "~/Library/Caches/JetBrains/Fleet",
    "~/Library/Logs/JetBrains/Fleet",
  ]
end
