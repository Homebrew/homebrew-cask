cask "egovframe-ide" do
  arch arm: "AArch64", intel: "x86_64"

  version "4.1.0"
  sha256 arm:   "7e7ece1b05a6e4ccfca522a44f4a4e0230a164f8542df0e78c0181efc039590e",
         intel: "b3c652165914f7ccc05eae9e4730954a0a2cf0d361331a14f2c291fa51510652"

  url "https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-#{version}-Mac-#{arch}.dmg"
  name "egovframe"
  desc "Open-source framework by South Korea for web-based public service development"
  homepage "https://www.egovframe.go.kr/"

  livecheck do
    url "https://www.egovframe.go.kr/home/sub.do?menuNo=39"
    regex(/개발환경 (\d+\.\d+\.\d+) 플러그인/i)
    strategy :page_match
  end

  app "eGovFrameDev-#{version}-Mac-#{arch}.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
