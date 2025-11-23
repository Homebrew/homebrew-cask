cask "hbuilderx" do
  arch arm: ".arm64"

  version "4.85.2025110510"
  sha256 arm:   "2554f501075919fecaf3ad9dab65dc6f05ff33d95cf8e2587841d84e3436c381",
         intel: "18b2682aa3ec2b38cbddc1f586879557ff18e5e780a06a15ac9caea9b264f2a5"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}#{arch}.dmg",
      verified: "download1.dcloud.net.cn/download/"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end
