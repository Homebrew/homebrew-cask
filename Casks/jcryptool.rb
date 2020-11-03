cask "jcryptool" do
  version "1.0.0,2020-11-01"
  sha256 "4284466b7cee5e0d3f14a4b134d70dec197752b77c34fd4c38dd5d15033d51c2"

  # github.com/jcryptool/core/ was verified as official when first introduced to the cask
  url "https://github.com/jcryptool/core/releases/download/Weekly-Build--#{version.after_comma}/jcryptool-#{version.before_comma}-macosx.cocoa.x86_64.tar.gz"
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
