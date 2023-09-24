cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "ba8195ac9ea6e0b1347209dc27d846f0a07a04462f20c1976024580647462156",
         intel: "8626532efce65887fc3e337a7f9875fa79ebeac6670e7481e2b9bfc535da777d"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
