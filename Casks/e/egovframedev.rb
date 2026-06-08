cask "egovframedev" do
  arch arm: "AArch64", intel: "x86_64"

  version "5.0.1"
  sha256 arm:   "53ac80f7e08cf8a2d78dbdb3f3203c9be3f385328dc183d113ef8ea716412e92",
         intel: "a331baedbe48142c74e5ee5b55284a7e3182463367f03eda27606d35cd09b5a6"

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
