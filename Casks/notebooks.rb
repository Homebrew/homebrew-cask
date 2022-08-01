cask "notebooks" do
  version "3.0,223"
  sha256 "f384b0b2e7a1040fe8f4f0c644ed4add080f704a2036d997d9fcf48b475f3bc7"

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
