cask "bee" do
  version "3.1.5,5468"
  sha256 "1568a63516384fd62d9f746f8afe8f94bcec84ca0d25bf0b8f252eee2432509e"

  # bee-app.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version.after_comma}-#{version.before_comma}.zip"
  appcast "https://s3.amazonaws.com/www.neat.io/bee/appcast.xml"
  name "Bee"
  homepage "https://www.neat.io/bee/"

  app "Bee.app"

  zap trash: [
    "~/Library/Application Scripts/io.neat.Bee",
    "~/Library/Application Scripts/io.neat.Bee-Mutator",
    "~/Library/Application Scripts/io.neat.Bee-Updater",
    "~/Library/Caches/io.neat.Bee",
    "~/Library/Containers/io.neat.Bee",
    "~/Library/Containers/io.neat.Bee-Mutator",
    "~/Library/Containers/io.neat.Bee-Updater",
  ]
end
