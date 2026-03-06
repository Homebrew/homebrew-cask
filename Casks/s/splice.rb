cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.8"
  sha256 arm:   "f400059e892a69ba2ae915e1013c7163961626e5df904dcc74205e9b4d95f787",
         intel: "c33d50b8aed74657fe264cc822ad08c1d84a3fd1cb356e1a249537cbb4ab0f54"

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
