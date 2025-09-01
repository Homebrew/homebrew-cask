cask "elemental" do
  version "7.3.0"
  sha256 "4543d5c5e32048fa173a6b11c697743572b1a6257dc6c7314bf24f7bc553f7d9"

  url "https://github.com/evolvedbinary/elemental/releases/download/elemental-#{version}/elemental-#{version}.dmg",
      verified: "github.com/evolvedbinary/elemental/"
  name "elemental"
  desc "Native XML Database with XQuery and XSLT"
  homepage "https://www.elemental.xyz/"

  livecheck do
    url :url
    regex(/^elemental[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Elemental.app"

  zap trash: "~/Library/Application Support/xyz.elemental"

  caveats do
    depends_on_java "21"
  end
end
