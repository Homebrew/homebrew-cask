cask "elemental@6" do
  version "6.9.0"
  sha256 "af5ee81a43875719ce67bc5687c2829acec4e1cdde2bbf46bb84de625d8f898f"

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
