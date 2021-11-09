cask "camtasia" do
  version "2021.0.6"
  sha256 "1527ca511437bc2b385e48a42059f944c531f73bf9e00fc491238e35bc2514b5"

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
