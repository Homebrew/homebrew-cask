cask "elemental@6" do
  version "6.4.0"
  sha256 "637d1e6fb8de2c36582229cac5b5c6a2ab8b0f735f84ba256efa556f6ecec5fc"

  url "https://github.com/evolvedbinary/elemental/releases/download/elemental-#{version}/elemental-#{version}.dmg",
      verified: "github.com/evolvedbinary/elemental/"
  name "elemental"
  desc "Native XML Database with XQuery and XSLT"
  homepage "https://www.elemental.xyz/"

  livecheck do
    url :url
    regex(/^elemental[._-]v?(6(?:\.\d+)+)$/i)
  end

  app "Elemental.app"

  zap trash: "~/Library/Application Support/xyz.elemental"

  caveats do
    depends_on_java "8"
  end
end
