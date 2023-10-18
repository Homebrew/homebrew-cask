cask "tiny-rdm" do
  arch arm: "arm64", intel: "intel"

  version "1.0.7"
  sha256 arm:   "66585bf80a4a231c3a6b504bd88178826e2015d3f5401d6fa64da3273cc5eeed",
         intel: "d859e97ba206dbe440931ff45b59aeb9fa9548507876099065947af3b9b74c31"

  url "https://github.com/tiny-craft/tiny-rdm/releases/download/v#{version}/TinyRDM_#{version}_mac_#{arch}.dmg"
  name "Tiny RDM"
  desc "Modern Redis Desktop Manager"
  homepage "https://github.com/tiny-craft/tiny-rdm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tiny RDM.app"

  zap trash: [
    "~/Library/Preferences/TinyRDM",
  ]
end
