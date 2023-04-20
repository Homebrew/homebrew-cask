cask "scilab" do
  arch arm: "accelerate-arm64", intel: "x86_64" # there is also an "openblas-" version

  version "6.1.1"
  sha256 arm:   "2f87710fc47c6d8e6777ee280ece589342e536c17290b9c033ea0dfcef3b4912",
         intel: "b417aace594cba882b19c2711aa125d8374d5da8b0a24df2873592765598e457"

  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-#{arch}.dmg",
      verified: "utc.fr/~mottelet/scilab/"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.utc.fr/~mottelet/scilab_for_macOS.html"
    regex(/href=.*?scilab[._-]v?(\d+(?:\.\d+)+)-#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  caveats do
    depends_on_java "8"
  end
end
