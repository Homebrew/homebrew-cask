cask "texmaker" do
  on_arm do
    version "6.0.1"
    sha256 "2bed3912c84749ea5ac646e5df99d6f5e5270e00f8377ae15a562a47c50d622e"

    livecheck do
      url "https://www.xm1math.net/texmaker/download.html"
      regex(%r{MacOSX\s+ARM64.*?href=.*?/texmaker-(\d+(?:\.\d+)*)\.dmg}im)
    end
  end
  on_intel do
    version "5.1.4"
    sha256 "4fb2896712f3aee93c0aae8f940dafab66c04334a76e055e1366adb21550f1fe"

    livecheck do
      url "https://www.xm1math.net/texmaker/download.html"
      regex(%r{MacOSX\s+Intel.*?href=.*?/texmaker-(\d+(?:\.\d+)*)\.dmg}im)
    end
  end

  url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  name "Texmaker"
  desc "LaTeX editor"
  homepage "https://www.xm1math.net/texmaker/"

  depends_on macos: ">= :high_sierra"

  app "texmaker.app"

  zap trash: [
    "~/Library/Preferences/texmaker.plist",
    "~/Library/Saved Application State/texmaker.savedState",
  ]
end
