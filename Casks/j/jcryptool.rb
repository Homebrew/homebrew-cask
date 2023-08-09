cask "jcryptool" do
  version "1.0.9"
  sha256 "73d0fc9fd7c26cb795400335d57e83bbc7bab6161c0c134df36e95aca3b31d3e"

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
    depends_on_java "11"
  end
end
