cask "lunasea" do
  version "10.1.0"
  sha256 "104fcf1d4a8116aa590724aa08892417156ea4158155f7581b6ac3d5184f50ac"

  url "https://github.com/JagandeepBrar/LunaSea/releases/download/v#{version}/lunasea-macos-amd64.zip",
      verified: "github.com/JagandeepBrar/LunaSea/"
  name "LunaSea"
  desc "Self-hosted controller built using the Flutter framework"
  homepage "https://www.lunasea.app/"

  app "LunaSea.app"

  zap trash: [
    "~/Library/Application Scripts/app.lunasea.lunasea",
    "~/Library/Containers/app.lunasea.lunasea",
  ]
end
