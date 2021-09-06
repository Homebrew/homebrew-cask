cask "scilab" do
  version "6.1.1"
  sha256 "9e2c18ac6391ce43b068a997fa5dd959a62c3d02fc2499e018c0e88c1aff8eaf"

  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-x86_64.dmg",
      verified: "utc.fr/~mottelet/scilab/"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.scilab.org/download/"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  caveats do
    depends_on_java "8"
  end
end
