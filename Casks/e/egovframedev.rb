cask "egovframedev" do
  arch arm: "AArch64", intel: "x86_64"

  version "5.0.2"
  sha256 arm:   "17aa276ec0775afc5169c9dbfab56bbdd94d4f74940a371c1b46608d59e57c32",
         intel: "cbe4400bacd588b622b798409dc3f4e92bbb67f5365db1b335372864a0788b23"

  url "https://maven.egovframe.go.kr/publist/HDD1/public/egovframework_v#{version.major_minor}/2_DevelopmentEnvironment/eGovFrame-Dev/#{version}/eGovFrameDev-#{version}-macOS-#{arch}.dmg",
      user_agent: :fake
  name "eGovFrameDev"
  desc "Open-source framework by South Korea for web-based public service development"
  homepage "https://www.egovframe.go.kr/"

  livecheck do
    url "https://www.egovframe.go.kr/home/sub.do?menuNo=39"
    regex(/개발자용\s+개발환경\s+v?(\d+(?:\.\d+)+)\s+(?!Beta)/i)
  end

  depends_on macos: :big_sur

  app "eGovFrameDev-#{version}-macOS-#{arch}.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
