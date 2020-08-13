cask "jcryptool" do
  version "0.9.10"
  sha256 "8c6e6b3fe803f40e7c5e9a910a47e6c3c5f0f5a8884932dd253e63f8b83194af"

  url "https://www.cryptool.org/jctdownload/Builds/downloads/stable/jcryptool-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast "https://www.cryptool.org/en/jct-downloads",
          must_contain: version.major_minor
  name "JCrypTool"
  homepage "https://www.cryptool.org/en/jcryptool"

  app "jcryptool.app"

  caveats do
    depends_on_java("8")
  end
end
