cask "camtasia" do
  version "2021.0.1"
  sha256 "d53a0a29dc7af8f2d2b8ba16197ac84c6fc79fa8f0107f18b5fbd63db1782c61"

  url "https://download.techsmith.com/camtasiamac/releases/#{version.major[-2..]}#{version.minor_patch.no_dots}/Camtasia.dmg"
  name "Camtasia"
  desc "Screen recorder and video editor"
  homepage "https://www.techsmith.com/camtasia.html"

  livecheck do
    url "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
    strategy :page_match
    regex(/Camtasia\s*\(Mac\)\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Camtasia #{version.major}.app"
end
