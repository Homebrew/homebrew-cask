cask "camtasia" do
  version "2023.1.0"
  sha256 "f1c7f6d5e21701b61db08b3d64fb81e3df969db37c283c84c021822c9f14ec07"

  url "https://download.techsmith.com/camtasiamac/releases/#{version.major[-2..]}#{version.minor_patch.no_dots}/Camtasia.dmg"
  name "Camtasia"
  desc "Screen recorder and video editor"
  homepage "https://www.techsmith.com/video-editor.html"

  livecheck do
    url "https://support.techsmith.com/api/v2/help_center/en-us/articles/115006624748"
    regex(/Camtasia\s*\(Mac\)\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Camtasia #{version.major}.app"

  zap trash: [
    "/Users/Shared/TechSmith/Camtasia",
    "~/Library/Application Support/TechSmith/Camtasia#{version.major}",
    "~/Library/Preferences/com.techsmith.camtasia2021.plist",
  ]
end
