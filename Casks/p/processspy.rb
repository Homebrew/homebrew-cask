cask "processspy" do
  version "1.6.0"
  sha256 "a7426398bcd5e2c5b7d72b3288f5d74c63e12179e2eceb14a6a90d935ff3f8bd"

  url "https://process-spy.app/archive/ProcessSpy_#{version}.dmg"
  name "ProcessSpy"
  desc "Monitor macOS processes with command line arguments"
  homepage "https://process-spy.app/"

  livecheck do
    url "https://process-spy.app/archive/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sonoma"

  app "ProcessSpy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.itone.ProcessSpy",
    "~/Library/Preferences/com.itone.ProcessSpy.plist",
  ]
end
