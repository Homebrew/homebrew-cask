cask "devtoys" do
  version "0.0.7.2"
  sha256 "e8cd5a2c2670fcf47d86e3bb19de7f9fa853c79ca245f09dd3fa4d9895d8a451"

  url "https://github.com/ObuchiYuki/DevToysMac/releases/download/#{version}/DevToys.app.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/ObuchiYuki/DevToysMac"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: "~/Library/Preferences/com.yuki.DevToys.plist"
end
