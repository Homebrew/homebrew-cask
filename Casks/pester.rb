cask "pester" do
  version "1.1b24"
  sha256 "1a05282c1de4cde91048bac86a17e39bdf18990be98d43758ce248f67a124e46"

  url "https://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast "https://sabi.net/nriley/software/Pester/updates.xml"
  name "Pester"
  homepage "https://sabi.net/nriley/software/index.html#pester"

  depends_on macos: ">= :sierra"

  app "Pester.app"
end
