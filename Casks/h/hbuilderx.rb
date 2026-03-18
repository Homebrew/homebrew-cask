cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.04.2026031801"
  sha256 arm:   "3d6bcc0bd1b625b1a3e0f56b9818fbb1704962a2b52b440e92b9c68da699ad1b",
         intel: "37c5daf56083874ab94bd5044d690e4000d854b91ea14a8aaf014ded60c70b25"

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
