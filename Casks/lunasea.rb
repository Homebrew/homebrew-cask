cask "lunasea" do
  version "10.0.1"
  sha256 "8e563cef4b9cd594f9b0b95fdbf968dbb8161a36ac12ed257591bbf9e48d4408"

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
