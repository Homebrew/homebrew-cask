cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.5"
  sha256 arm:   "fe39130bd1f5e958f5dffb968e14a3ddf298695e0384f231c7e1bc78a2f9f6c5",
         intel: "d49e1050d729cf6fd238a6f25dfa10255789107f32476f6075047f0bd28436c1"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
