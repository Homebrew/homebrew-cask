cask "giteye" do
  version "2.2.0"
  sha256 "0bee4971bc495b73832fb46719231eeff10db690c159fa12c0828634ee86b1c3"

  url "https://www.collab.net/sites/default/files/downloads/GitEye-#{version}-macosx.x86_64.zip"
  name "CollabNet GitEye"
  desc "Git client"
  homepage "https://www.collab.net/products/giteye"

  livecheck do
    url "https://www.collab.net/downloads/giteye-mac-64"
    regex(%r{href=.*?/GitEye[._-]v?(\d+(?:\.\d+)*)[._-]macosx\.x86[._-]64\.zip}i)
  end

  app "GitEye.app"

  zap trash: [
    "~/Library/Preferences/GitEye.plist",
    "~/Library/Saved Application State/GitEye.savedState",
  ]
end
