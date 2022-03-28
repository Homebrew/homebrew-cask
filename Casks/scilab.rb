cask "scilab" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  prefix = Hardware::CPU.intel? ? "" : "accelerate-" # there is also an "openblas-" version

  version "6.1.1"

  if Hardware::CPU.intel?
    sha256 "b417aace594cba882b19c2711aa125d8374d5da8b0a24df2873592765598e457"
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
