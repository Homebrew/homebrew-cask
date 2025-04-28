cask "elemental" do
  version "7.0.0"
  sha256 "fea71251b2b9859923a1ba4f9509c0f0b104b4265e8ba7fcb33828b110b399cf"

  url "https://github.com/evolvedbinary/elemental/releases/download/elemental-#{version}/elemental-#{version}.dmg",
      verified: "github.com/evolvedbinary/elemental/"
  name "elemental"
  desc "Native XML Database with XQuery and XSLT"
  homepage "https://www.elemental.xyz/"

  livecheck do
    url :url
    regex(/^elemental-(.+)$/i)
  end

  app "Elemental.app"

  zap trash: "~/Library/Application Support/xyz.elemental"

  caveats do
    depends_on_java "21"
  end
end
