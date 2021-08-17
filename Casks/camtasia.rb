cask "camtasia" do
  version "2021.0.4"
  sha256 "0ba2169524667460179feb67d6d255a00ff80ab45c6d8fe19c8d447a4d193423"

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
