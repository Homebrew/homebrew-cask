cask "jcryptool" do
  version "1.0.2"
  sha256 "7ec8a49fd326cdbf9b11c5a099373e82e397b22ac03b925cb2184aa1a95561a1"

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
