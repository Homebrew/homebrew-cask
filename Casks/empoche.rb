cask "empoche" do
  version "0.4.5"
  sha256 "8a4c57928da42a3ed60b1e0648b24614f84ecc582f3b9c9ee04cd5323e58ea4f"

  # empoche-desktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://empoche-desktop.s3.amazonaws.com/Empoche-#{version}-mac.zip"
  appcast "https://empoche-desktop.s3.amazonaws.com/latest-mac.yml"
  name "Empoche"
  homepage "https://empoche.com/"

  app "Empoche.app"

  zap trash: [
    "~/Library/Application Support/empoche",
    "~/Library/Saved Application State/com.empoche.app.savedState",
    "~/Library/Preferences/com.empoche.app.plist",
  ]
end
