cask "elemental@6" do
  version "6.8.1"
  sha256 "5f9103ad3c720c2bef56b85d7ec67dd57f8bf548ea67a71e3caf26ded38bbb13"

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
