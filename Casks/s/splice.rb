cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.1"
  sha256 arm:   "11ca18ed329b73c2834d4fdf4062591956f4e6125e87954a1add8b55899ffdec",
         intel: "b7a187fe86b1832ee9db30ea50a77030b815b6f7ecd95c6c17c10e412026fdaa"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
