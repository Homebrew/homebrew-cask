cask "jcryptool" do
  version "1.0.9"
  sha256 "58ba00b265e0180eb3e68f82a8978603fe1112af88ff747959e35bd11b9d79ee"

  url "https://github.com/jcryptool/core/releases/download/#{version}/JCrypTool-#{version}-macOS-64bit.tar.gz",
      verified: "github.com/jcryptool/core/"
  name "JCrypTool"
  desc "Apply and analyze cryptographic algorithms"
  homepage "https://www.cryptool.org/en/jct/downloads"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "JCrypTool.app"

  zap trash: [
    "~/Library/Application Support/JCrypTool",
    "~/Library/Caches/org.jcryptool.JCrypTool",
    "~/Library/Preferences/org.jcryptool.JCrypTool.plist",
    "~/Library/Saved Application State/org.jcryptool.JCrypTool.savedState",
  ]

  caveats do
    depends_on_java "11"
    requires_rosetta
  end
end
