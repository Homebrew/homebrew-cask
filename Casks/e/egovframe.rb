cask "egovframe" do
  version "4.1.0"

  app_name = ""

  on_arm do
    sha256 "7a3f276cb8b4accb01eca47f9a65f4abaabd5f7eb9d2c0862909d9e26602afde"

    url "https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-#{version}-Mac-AArch64.dmg"
    app_name = "eGovFrameDev-#{version}-Mac-AArch64.app"
  end
  on_intel do
    sha256 "53399206e310112396dd294bb24069e59e32fe9694e1bd6f0e0acc73fef95ba7"

    url "https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-#{version}-Mac-x86_64.dmg"
    app_name = "eGovFrameDev-#{version}-Mac-x86_64.app"
  end

  name "egovframe"
  desc "Open-source framework by South Korea for web-based public service development"
  homepage "https://www.egovframe.go.kr/"

  livecheck do
    url "https://www.egovframe.go.kr/home/sub.do?menuNo=39"
    regex(/개발환경 (\d+\.\d+\.\d+)/i)
    strategy :page_match
  end

  postflight do
    set_ownership "/Applications/#{app_name}"
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/#{app_name}"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
