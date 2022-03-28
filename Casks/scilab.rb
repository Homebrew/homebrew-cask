cask "scilab" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  prefix = Hardware::CPU.intel? ? "" : "accelerate-" # there is also an "openblas-" version

  version "6.1.1"

  if Hardware::CPU.intel?
    sha256 "922e879979fe4e1fde83be4b3df02070c0930a56a75cdeb9b5ef46ae29f0ef57"
  else
    sha256 "2f87710fc47c6d8e6777ee280ece589342e536c17290b9c033ea0dfcef3b4912"
  end

  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-#{prefix}#{arch}.dmg",
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
