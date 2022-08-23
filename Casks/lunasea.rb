cask "lunasea" do
  version "10.1.1"
  sha256 "b0945baa586a749a344771c02f867137e29a9d5eabd8f4d74ade0e4f72ff3332"

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
