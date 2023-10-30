cask "olive" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "942672912"
    sha256 "f2a125f563d195ab510bffe53b8a4c564c3c0ab92ae434cc1f440e8c9b8ece84"
  end
  on_intel do
    version "942672913"
    sha256 "f2a125f563d195ab510bffe53b8a4c564c3c0ab92ae434cc1f440e8c9b8ece84"
  end

  url "https://olivevideoeditor.org/go?id=#{version}"
  name "Olive"
  desc "Non-linear video editor"
  homepage "https://www.olivevideoeditor.org/"

  livecheck do
    url "https://www.olivevideoeditor.org/golatest/?platform=macOS&arch=#{arch}&ext="
    strategy :header_match
  end

  app "Olive.app"

  uninstall rmdir: "~/Library/Application Support/olivevideoeditor.org{/Olive,}"

  zap trash: [
    "~/Library/Preferences/com.*.Olive.plist",
    "~/Library/Preferences/olivevideoeditor.org",
  ]
end
