cask "mindjet-mindmanager" do
  version "22.2.133"
  sha256 "da225dcba4b19812f73644eeb99c42f2984937c5c711e375c52665171f263ca6"

  url "https://download.mindjet.com/MindManager_Mac_#{version}.dmg"
  name "Mindmanager"
  desc "Mind Mapping Tool"
  homepage "https://www.mindjet.com/mindmanager/"

  livecheck do
    url "https://www.mindmanager.com/mm-mac-dmg"
    regex(/MindManager[._-]Mac[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "MindManager.app"
end
