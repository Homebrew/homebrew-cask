cask "jcryptool" do
  version "1.0.1"
  sha256 "6e63d68b2d2fd4600368f6e325bfeb6b3fae56397c54d119f67accf41cc8268c"

  # github.com/jcryptool/core/ was verified as official when first introduced to the cask
  url "https://github.com/jcryptool/core/releases/download/#{version}/JCrypTool-#{version}-macOS-64bit.tar.gz"
  appcast "https://github.com/jcryptool/core/releases.atom",
          must_contain: version.after_comma
  name "JCrypTool"
  desc "Apply and analyze cryptographic algorithms"
  homepage "https://www.cryptool.org/en/jct/downloads"

  app "JCrypTool.app"

  caveats do
    depends_on_java("11")
  end
end
