cask "camtasia" do
  version "2021.0.12"
  sha256 "1240e3583336cd3e84767211aa12e0d41d4721d4d28a9be0eeaaf9ea16276fcf"

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
    "~/Library/Application Support/TechSmith/Camtasia#{version.major}",
    "~/Library/Preferences/com.techsmith.camtasia2021.plist",
    "/Users/Shared/TechSmith/Camtasia",
  ]
end
