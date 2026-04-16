cask "nanoleaf" do
  arch arm: "-arm64"

  version "2.4.1"
  sha256 arm:   "2a569d12d0f10d8b65fd9943f1bda541e2576fd13bec6109e23b649652203bcf",
         intel: "ad4d5d297506e665a29fbb3dc843a0217cc403fa11591ebe3bb629ffc2b5f0af"

  url "https://desktop-app-prod-3.s3.us-west-2.amazonaws.com/Nanoleaf%20Desktop-#{version}#{arch}.dmg",
      verified: "desktop-app-prod-3.s3.us-west-2.amazonaws.com/"
  name "Nanoleaf Desktop"
  desc "Control your Nanoleaf lights"
  homepage "https://nanoleaf.me/"

  livecheck do
    url "https://desktop-app-prod-3.s3.us-west-2.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Nanoleaf Desktop.app"

  zap trash: [
    "~/Library/Application Support/Nanoleaf Desktop",
    "~/Library/Preferences/me.nanoleaf.desktop-app.plist",
    "~/Library/Saved Application State/me.nanoleaf.desktop-app.savedState",
  ]
end
