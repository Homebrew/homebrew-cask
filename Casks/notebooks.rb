cask "notebooks" do
  version "3.0.1,224"
  sha256 "6bec6791c4efb2cc37ca3874d593c71ea07e4cdeeedda3294db7e8817018d790"

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  name "Notebooks"
  desc "Word processor"
  homepage "https://www.notebooksapp.com/mac/"

  livecheck do
    url "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
    strategy :sparkle
  end

  app "Notebooks.app"
end
