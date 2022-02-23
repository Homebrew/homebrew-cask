cask "devtoys" do
  version "0.0.9"
  sha256 "7a076b0bd7ad8b384dcb390c224405a2face81ebfae93fb0177cd5b9aea70eed"

  url "https://github.com/ObuchiYuki/DevToysMac/releases/download/#{version}/DevToys.app.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/ObuchiYuki/DevToysMac"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: "~/Library/Preferences/com.yuki.DevToys.plist"
end
