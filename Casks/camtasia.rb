cask "camtasia" do
  version "2023.1.1"
  sha256 "a63e6dac2e6a5b41f1dc48378be078652642d52e598268b4799959ffd74f5891"

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
