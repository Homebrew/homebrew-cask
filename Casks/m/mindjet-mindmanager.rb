cask "mindjet-mindmanager" do
  version "23.0.166"
  sha256 "9fbf4e3b36e26fe39d0bcb44729a3f63e3ab9709f9c97f2f540e60cd0a3eb798"

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
