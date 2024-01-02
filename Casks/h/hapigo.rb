cask "hapigo" do
  version "2.12.0"
  sha256 "e80bf8ab2b5c05194278b54488232ef830d18cfe15921e921dc91955753051a8"

  url "https://dl.hapigo.com/HapiGo_#{version}.dmg"
  name "HapiGo"
  desc "Application launcher and productivity software"
  homepage "https://www.hapigo.com/"

  livecheck do
    url "https://hapigo.com/update/cast.plist"
    regex(%r{<key>version</key>\s*\n\s*<string>(\d+(?:\.\d+)+)</string>}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "HapiGo.app"

  zap trash: [
    "~/Library/Application Support/Hapigo",
    "~/Library/Caches/Hapigo",
    "~/Library/Caches/com.xunyong.hapigo",
    "~/Library/HTTPStorages/com.xunyong.hapigo",
    "~/Library/HTTPStorages/com.xunyong.hapigo.binarycookies",
    "~/Library/Preferences/com.xunyong.hapigo.plist",
    "~/Library/Preferences/com.xunyong.hapigofind.plist",
    "~/Library/WebKit/com.xunyong.hapigo",
  ]
end
