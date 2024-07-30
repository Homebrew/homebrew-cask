cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10095"
  sha256 arm:   "5189d91b20aff6e660dcfdf3953ca14b36e74b4910f673b809e67ad160b17920",
         intel: "2513df1de15d7ab1f0041133bab4630586916c3a212d64b93a12c9b71d4c3f81"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
