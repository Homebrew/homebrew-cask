cask "devtoys" do
  version "0.0.8.2"
  sha256 "5c8395e34a6740ec7773278c2e2dd58384f0238fd6a58fe9658ad767b62cf7af"

  url "https://github.com/ObuchiYuki/DevToysMac/releases/download/#{version}/DevToys.app.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/ObuchiYuki/DevToysMac"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: "~/Library/Preferences/com.yuki.DevToys.plist"
end
