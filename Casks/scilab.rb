cask "scilab" do
  version "6.1.1"
  sha256 "405a60a4a910c065e2a01fb4f2672766cc0ebeafae847a6fa5f675068b74fcec"

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

    <<~EOS
      If prompted to install the legacy Java 6, use the enableJDK tool provided by the vendor to enable installed JDK to use with #{token}:

        https://www.utc.fr/~mottelet/scilab_for_macOS.html
    EOS
  end
end
