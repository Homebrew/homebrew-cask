cask "instantview" do
  version "3.20,R0003"
  sha256 "01bb3beb3ced803e548bd7fdb4ff1ee76d1f6a79c7824c46ca3e34919845ff68"

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
