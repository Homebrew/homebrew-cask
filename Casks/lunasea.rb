cask "lunasea" do
  version "10.0.0"
  sha256 "ab35402ec47d1f106beafd6e0da41506d9ea788046e35b8bd36f54468c5c0265"

  url "https://github.com/JagandeepBrar/LunaSea/releases/download/v#{version}/LunaSea-macOS.zip",
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
