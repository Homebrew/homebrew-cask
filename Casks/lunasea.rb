cask "lunasea" do
  on_mojave :or_older do
    version "10.2.2"
    sha256 "61ef622b70c31550ec6f700eba1e938c23fb97717344e8876d56e2d856a51be4"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "10.2.4"
    sha256 "37c33b8c55a4ddb36b59c2c8340b86ab58893acf041fed6d5b7bbd95f5c31fbd"
  end

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
