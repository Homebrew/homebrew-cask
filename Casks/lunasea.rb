cask "lunasea" do
  on_mojave :or_older do
    version "10.2.2"
    sha256 "61ef622b70c31550ec6f700eba1e938c23fb97717344e8876d56e2d856a51be4"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "10.2.3"
    sha256 "bac9d7ae61eeabdab5c824210957c73d90f773caf817ed3c682b1976a9cfb1a5"
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
