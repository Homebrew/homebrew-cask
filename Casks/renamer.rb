cask "renamer" do
  version "6.0.6"
  sha256 "66024e88c714080854a5208d2888eda9ab3f9cccc80c81be83698f570b93b05c"

  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  depends_on macos: ">= :mojave"

  app "Renamer.app"
end
