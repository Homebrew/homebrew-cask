cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "2.3.15"
  sha256 arm:   "a80130ad2f085a9e8e5a680e3ccebf17ffeb26e26498e3c222e3bd4c3d5ea478",
         intel: "0f1d02cc07197a61794147371d5c92c529c9c314b5ba94d70beab09f50de7b2d"

  url "https://assets.apidog.com/download/#{version}/Apidog#{arch}-#{version}.dmg"
  name "Apidog"
  desc "API development platform"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.apidog.com/api/v1/configs/client-updates/#{version}/#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Apidog.app"

  zap trash: [
    "~/Library/Application Support/apidog",
    "~/Library/Preferences/com.apidog.app.plist",
    "~/Library/Saved Application State/com.apidog.app.savedState",
  ]
end
