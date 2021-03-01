cask "deviceinfo" do
  version "0.9.2"
  sha256 "d73f74064b2ce27271732e8e7360b32a0f9a2fad457bbee9636a3bf9ff3270a5"

  url "https://corenion.github.io/DeviceInfo/#{version}/DeviceInfo_mac.zip"
  name "DeviceInfo"
  desc "Display device information"
  homepage "https://corenion.github.io/DeviceInfo/"

  depends_on macos: ">= :sierra"

  app "DeviceInfo.app"
end
