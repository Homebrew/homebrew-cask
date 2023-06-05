cask "hermes" do
  version "1.3.1"
  sha256 "f7c2949e4a44a9183eb6c937b250052867a0373f9de7a8ecbd63853d7df88dbd"

  url "https://github.com/HermesApp/Hermes/releases/download/v#{version}/Hermes-#{version}.zip",
      verified: "github.com/HermesApp/Hermes/"
  name "Hermes"
  desc "Pandora player"
  homepage "https://hermesapp.org/"

  livecheck do
    url "https://raw.githubusercontent.com/HermesApp/HermesApp.github.io/master/versions.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Hermes.app"

  zap trash: [
    "~/Library/Application Support/Hermes",
    "~/Library/Caches/com.alexcrichton.Hermes",
    "~/Library/Preferences/com.alexcrichton.Hermes.plist",
  ]
end
