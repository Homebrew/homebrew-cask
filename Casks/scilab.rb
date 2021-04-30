cask "scilab" do
  version "6.1.0"
  sha256 "79d1f133dae74dcc4d1ea01bcd2e5a77510f510f0680cf2d26494d2baacde725"

  url "https://www.utc.fr/~mottelet/scilab/download/branch-#{version.major_minor}/scilab-branch-#{version.major_minor}-x86_64.dmg",
      verified: "utc.fr/~mottelet/scilab/"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.scilab.org/download/"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "scilab-branch-#{version.major_minor}.app"
  binary "#{appdir}/scilab-branch-#{version.major_minor}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-branch-#{version.major_minor}.app/Contents/bin/scilab-cli"

  caveats do
    depends_on_java "8"

    <<~EOS
      If prompted to install the legacy Java 6, use the enableJDK tool provided by the vendor to enable installed JDK to use with #{token}:

        https://www.utc.fr/~mottelet/scilab_for_macOS.html
    EOS
  end
end
