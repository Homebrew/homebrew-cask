cask "deviceinfo" do
  version "1.0"
  sha256 "0387e3d5a12027d807bc8e84d11c8ae062fef56ca1bbcbba65e0ecc83989ed5e"

  url "https://github.com/CoreNion/DeviceInfo/releases/download/v#{version}/DeviceInfo.dmg"
  name "DeviceInfo"
  desc "Display device information"
  homepage "https://github.com/CoreNion/DeviceInfo/"

  deprecate! date: "2024-07-10", because: :unmaintained

  depends_on macos: ">= :sierra"

  app "DeviceInfo.app"

  caveats do
    requires_rosetta
  end
end
