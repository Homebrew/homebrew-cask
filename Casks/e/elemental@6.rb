cask "elemental@6" do
  version "6.6.1"
  sha256 "4ed2484bb9a2463689fb8101047088ba3ac9c39f826daf6112d8c5b673bddc9b"

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
