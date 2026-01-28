cask "brewtarget" do
  version "5.0.2"
  sha256 "6654e6862459a3b868f149adf40f0f989f8f7379106278afa076d52a655c1874"

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

  depends_on macos: ">= :sequoia"

  app "brewtarget_#{version}_MacOS.app"

  zap trash: [
    "~/Library/Preferences/brewtarget",
    "~/Library/Preferences/com.brewtarget.Brewtarget.plist",
    "~/Library/Saved Application State/com.brewtarget.Brewtarget.savedState",
  ]
end
