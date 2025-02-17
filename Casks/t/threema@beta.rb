cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta48"
  sha256 arm:   "e079d8a7cf29effd11caf1f3d49ab43b9739d54cc7a522e790aeab97ea1873cc",
         intel: "60856d6eb6498b969f0cd02a0f7872b43062dce2321d901738916eac2ad43575"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://threema.ch/en/download-md"
    regex(/href=.*?threema[._-]desktop[._-]v?(\d+(?:(?:[.-]|(beta))+\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
