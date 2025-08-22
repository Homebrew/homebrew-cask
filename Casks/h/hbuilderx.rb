cask "hbuilderx" do
  arch arm: ".arm64"

  version "4.76.2025082103"
  sha256 arm:   "2f7e398e0c3b1d80afdbdc33b4eb00077db40301fa0de45afd7624612544f463",
         intel: "e977e1a7c554c8575e7e765c944dedc28c760fd931f47f941dc9e4389e480fb8"

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
