cask "egovframedev" do
  arch arm: "AArch64", intel: "x86_64"

  version "5.0.0"
  sha256 arm:   "0f46f4b8a6949ef2ac333ec751679e8de8db3cdef1ec16865924c687ac6cbfb7",
         intel: "ab266af6fc7a1259fe908f5142b28a81ab13e1a2a8fa697d56ca89b4a4eed87d"

  url "https://maven.egovframe.go.kr/publist/HDD1/public/egovframework_v5.0/2_DevelopmentEnvironment/eGovFrame-Dev/5.0.0/eGovFrameDev-#{version}-macOS-#{arch}.dmg",
      user_agent: :fake
  name "eGovFrameDev"
  desc "Open-source framework by South Korea for web-based public service development"
  homepage "https://www.egovframe.go.kr/"

  livecheck do
    url "https://www.egovframe.go.kr/home/sub.do?menuNo=39"
    regex(/개발자용\s+개발환경\s+v?(\d+(?:\.\d+)+)\s+(?!Beta)/i)
  end

  depends_on macos: ">= :big_sur"

  app "eGovFrameDev-#{version}-macOS-#{arch}.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
