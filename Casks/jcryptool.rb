cask "jcryptool" do
  version "1.0.4"
  sha256 "65b95a6d71d28d5a7be17feb6bb2181932ccb0e8c52982dd00c3bde24ba2af83"

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

  caveats do
    depends_on_java("11")
  end
end
