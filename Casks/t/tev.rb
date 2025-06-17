cask "tev" do
  arch intel: "-intel"

  version "2.0"
  sha256 arm:   "187f2e84a6aa7dbafdf43149b756aee3a3f6577304f532a0839d527d4241c3fa",
         intel: "62a5ce3f6f4361bb68c2e693fdb7d701ec8ad4b93d6269d852b6d03223b6a50e"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "HDR image comparison tool with an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
