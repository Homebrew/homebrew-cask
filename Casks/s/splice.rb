cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.9.2"
  sha256 arm:   "b741456f9bab1169d1f9c3caa503ea04841d87a30672c6ae1e7d8800d017b33f",
         intel: "76b37d9f05f8fe5a2d785ff5b10327f0bb19cf5a3f83e2bd18ce93c6df4fd5c8"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
