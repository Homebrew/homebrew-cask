cask "jcryptool" do
  version "1.0.6"
  sha256 "f29b9a94df8bdd0bfb2e84ae20330c32a6c6ea05c3b56ea8a6e50d0308b44dc7"

  url "https://github.com/jcryptool/core/releases/download/v#{version}/JCrypTool-#{version}-macOS-64bit.tar.gz",
      verified: "github.com/jcryptool/core/"
  name "JCrypTool"
  desc "Apply and analyze cryptographic algorithms"
  homepage "https://www.cryptool.org/en/jct/downloads"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "JCrypTool.app"

  caveats do
    depends_on_java "11"
  end
end
