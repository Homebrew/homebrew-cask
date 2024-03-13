cask "paperlib" do
  version "3.0.0"
  sha256 :no_check

  arch arm: "arm", intel: "x86-64"
  channel = on_arch_conditional arm: "electron-mac-arm", intel: "electron-mac"

  url "https://paperlib.app/distribution/#{channel}/Paperlib_#{version}.dmg",
      verified: "paperlib.app/distribution/#{channel}"
  name "Paperlib"
  desc "A simple academic paper management tool."
  homepage "https://paperlib.app/en/"

  livecheck do
    url "https://paperlib.app/distribution/#{channel}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Paperlib.app"

  uninstall quit: "dev.paperlib.app"

  zap trash: [
    "~/Library/Application Support/paperlib/",
    "~/Library/Application Support/Caches/paperlib-updater/",
  ]
end
