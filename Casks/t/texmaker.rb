cask "texmaker" do
  on_arm do
    version "6.0.2"
    sha256 "367b5ceae905a3808ed11f473e33ac8b3cf9805783e23bda07513fc913deb52a"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "texmaker.app"

  zap trash: [
    "~/Library/Preferences/texmaker.plist",
    "~/Library/Saved Application State/texmaker.savedState",
  ]
end
