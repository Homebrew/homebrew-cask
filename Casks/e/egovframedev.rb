cask "egovframedev" do
  arch arm: "AArch64", intel: "x86_64"

  version "4.3.1"
  sha256 arm:   "f7a13637be51c750093b98763df20210131c6041a6fcba8237c352eb1f335a5d",
         intel: "f0149077a39664654842b8ee6b2a0084fd0bd17b726d078fe3b1de2eeec64bdb"

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
