cask "jcryptool" do
  version "1.0.5"
  sha256 "d7e787e96a2a9d07423cc386fb8b179624f9212fa8ea4e74f09f2b2fd6664a5e"

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
    depends_on_java("11")
  end
end
