cask "meta-quest-developer-hub" do
  version "4.8.0"
  sha256 :no_check

  url "https://securecdn.oculus.com/binaries/download/?id=26027232766892142"
  name "meta-quest-developer-hub"
  desc "VR development tool"
  homepage "https://developer.oculus.com/meta-quest-developer-hub/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Meta Quest Developer Hub.app"

  # No zap stanza required

  caveats do
    license "https://developer.oculus.com/licenses/oculussdk"
  end
end
