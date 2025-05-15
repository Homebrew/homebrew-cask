cask "hbuilderx" do
  arch arm: ".arm64"

  version "4.65.2025051206"
  sha256 arm:   "a9be273f127f6bdc80bc09a249522ea586ca3dd1a23592cdefc1fd5ba553f60c",
         intel: "6095974a84c3b73605145eae9106f5dd02b6863d5ac688732211116b811a7adc"

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

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end
