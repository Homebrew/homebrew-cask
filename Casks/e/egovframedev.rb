cask "egovframedev" do
  arch arm: "AArch64", intel: "x86_64"

  version "4.3.0"
  sha256 arm:   "5bade24bb6dde7d4f48da064aa19474c544a77895d60e1db586c6abad013d8bf",
         intel: "60d6ed38eb503e88c8377777bbe5fb8043890f9711b25b5c59807b39d071aee2"

  url "https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-#{version}-Mac-#{arch}.dmg"
  name "eGovFrameDev"
  desc "Open-source framework by South Korea for web-based public service development"
  homepage "https://www.egovframe.go.kr/"

  livecheck do
    url "https://www.egovframe.go.kr/home/sub.do?menuNo=39"
    regex(/개발자용\s+개발환경\s+v?(\d+(?:\.\d+)+)\s+(?!Beta)/i)
  end

  depends_on macos: ">= :big_sur"

  app "eGovFrameDev-#{version}-Mac-#{arch}.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
