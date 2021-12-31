cask "jcryptool" do
  version "1.0.8"
  sha256 "0ba3fa1670cc00748baadc146128881aae30c567468b4abb09a73213604d3ec7"

  url "https://github.com/jcryptool/core/releases/download/#{version}/JCrypTool-#{version}-macOS-64bit.zip",
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
