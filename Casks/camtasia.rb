cask "camtasia" do
  version "2021.0.2"
  sha256 "3280d39a86f6de5e3019f9334718d3e73744c061a77608c4add4566c39ed359f"

  url "https://download.techsmith.com/camtasiamac/releases/#{version.major[-2..]}#{version.minor_patch.no_dots}/Camtasia.dmg"
  name "Camtasia"
  desc "Screen recorder and video editor"
  homepage "https://www.techsmith.com/camtasia.html"

  livecheck do
    url "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
    regex(/Camtasia\s*\(Mac\)\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Camtasia #{version.major}.app"
end
