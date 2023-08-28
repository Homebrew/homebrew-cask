cask "mindjet-mindmanager" do
  version "23.0.167"
  sha256 "b78e075b54e59e8a7da430dd30769645ce05675238b9e9ba28d0f7643f104bd4"

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
