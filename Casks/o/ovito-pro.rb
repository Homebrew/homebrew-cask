cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.11.0"
  sha256 arm:   "b4f516b5c5332e64b062f8f4d162a32f28391e6cbfef775b1f66f70a4a445053",
         intel: "e89efd06d542897951a4bd17b9b138024581e5de12ef8cc6827fcab13cf208dd"

  url "https://www.ovito.org/download/master/ovito-pro-#{version}-macos-#{arch}.dmg"
  name "OVITO Pro"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ovito[._-]pro[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "ovito"
  depends_on macos: ">= :mojave"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
