cask "texmaker" do
  version "5.1.4"
  sha256 "4fb2896712f3aee93c0aae8f940dafab66c04334a76e055e1366adb21550f1fe"

  url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  name "Texmaker"
  desc "LaTeX editor"
  homepage "https://www.xm1math.net/texmaker/"

  livecheck do
    url "https://www.xm1math.net/texmaker/download.html"
    regex(%r{href=.*?/texmaker-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "texmaker.app"

  zap trash: [
    "~/Library/Preferences/texmaker.plist",
    "~/Library/Saved Application State/texmaker.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
