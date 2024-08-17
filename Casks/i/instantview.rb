cask "instantview" do
  version "3.21,R0001"
  sha256 "16cd0f07bff511c788d75a850a21712176428551ed39d7e3a236584708fc0697"

  url "https://www.siliconmotion.com/downloads/macOS_InstantView_V#{version.csv.first}#{version.csv.second}.dmg"
  name "SiliconMotion InstantView"
  desc "Driver for SM76x with UI"
  homepage "https://www.siliconmotion.com/"

  livecheck do
    url "https://www.siliconmotion.com/downloads/index.html"
    regex(/macOS[._-]instantview[._-]v?(\d+(?:\.\d+)+)(\w\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "macOS InstantView.app"

  uninstall quit: "com.SMI-Inc.InstantView"

  zap trash: [
    "~/Library/Application Support/InstantView",
    "~/Library/Caches/com.SMI-Inc.InstantView",
  ]
end
