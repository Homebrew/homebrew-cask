cask "jcryptool" do
  version "1.0.8"
  sha256 "6710102ac48fdd12356c557e6c742330458704c2da89fe0c99f9c1ba787fc5c8"

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
