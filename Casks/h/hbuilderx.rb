cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.34.2026102909"
  sha256 arm:   "305fd3d92461a9391a0f4168a8e79a4866f33e7a02b18135babfe19ab2f4075f",
         intel: "145ab91ea09dd3e13dfd5ea53c74994a73f2e847b094580e68a7743f622c0005"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}#{arch}.dmg"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  app "HBuilderX.app"

  uninstall quit: "io.dcloud.HBuilderX"

  zap trash: [
    "~/Library/Application Support/HBuilder X",
    "~/Library/Preferences/io.dcloud.HBuilderX.plist",
  ]
end
