cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.4.1"
  sha256 arm:   "71441bd975f2af904860cb8d2fa222516d7d49d0216eccb070fdb164a3fd3c57",
         intel: "54b0cdabd8d99e34d3d40e710deb7fd0bb5c65af3eac0301505546a37d9e5ed3"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
