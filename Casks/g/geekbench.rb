cask "geekbench" do
  version "7.0.0"
  sha256 "68e8e3821aa65f1b5d7e3b3e307c9f002c0f1efc02b3e62b96244a9e54bf1933"

  url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
  name "Geekbench"
  desc "Tool to measure the computer system's performance"
  homepage "https://www.geekbench.com/"

  livecheck do
    url "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Geekbench #{version.major}.app"

  uninstall quit: "com.primatelabs.parkdale"
  
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.primatelabs.parkdale.sfl*",
    "~/Library/HTTPStorages/com.primatelabs.parkdale",
    "~/Library/Preferences/com.primatelabs.parkdale.plist",
  ]
end
