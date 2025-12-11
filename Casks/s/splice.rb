cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.4"
  sha256 arm:   "b040b20ac81bcdc11692c0cba3daf8eddf4ac1d6fa3dcdf9bb774d3246ea883a",
         intel: "6f6220301d4ef513d631fd9a8f227a5a4c89392f0134f57e68a97616b10ac445"

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
