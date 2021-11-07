cask "camtasia" do
  version "2021.0.5"
  sha256 "916aba24ba18a8822e39e5902d9f98e561560a21e9fb6eab835405fdafa0d375"

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
