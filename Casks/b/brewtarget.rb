cask "brewtarget" do
  version "5.1.0"
  sha256 "53ecfe942c031d9d0f89ae6bc96e352520f93ca395d0d1db67e535b70136e602"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_MacOS.dmg",
      verified: "github.com/Brewtarget/brewtarget/"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://www.brewtarget.beer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :sequoia

  app "brewtarget_#{version}_MacOS.app"

  zap trash: [
    "~/Library/Preferences/brewtarget",
    "~/Library/Preferences/com.brewtarget.Brewtarget.plist",
    "~/Library/Saved Application State/com.brewtarget.Brewtarget.savedState",
  ]
end
