cask "devtoys" do
  version "0.0.10"
  sha256 "176393a804c90d2aa9155e73b0ad0599380e05dd44d5ec2b35265687e6ffd080"

  url "https://github.com/ObuchiYuki/DevToysMac/releases/download/#{version}/DevToys.app.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/ObuchiYuki/DevToysMac"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: "~/Library/Preferences/com.yuki.DevToys.plist"
end
