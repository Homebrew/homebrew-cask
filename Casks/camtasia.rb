cask "camtasia" do
  version "2022.6.6"
  sha256 "93c89849683b155b9cd28b34c4449a6492215b4386c96b9fc12b72c8e4aad2ae"

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
