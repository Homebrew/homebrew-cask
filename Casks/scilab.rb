cask "scilab" do
  version "6.1.0"
  sha256 "97d60eae1d8b7396d3773d53f86e9b533c6ac0b64db2d3725a5ef0d38017915a"

  # utc.fr/~mottelet/scilab/ was verified as official when first introduced to the cask
  url "https://www.utc.fr/~mottelet/scilab/download/branch-#{version.major_minor}/scilab-branch-#{version.major_minor}-x86_64.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.scilab.org/download/"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  depends_on macos: ">= :high_sierra"

  app "scilab-branch-#{version.major_minor}.app"
  binary "#{appdir}/Scilab-branch-#{version.major_minor}.app/Contents/MacOS/bin/scilab"
  binary "#{appdir}/Scilab-branch-#{version.major_minor}.app/Contents/MacOS/bin/scilab-cli"

  caveats do
    depends_on_java "8"

    <<~EOS
      If prompted to install the legacy Java 6, use the enableJDK tool provided by the vendor to enable installed JDK to use with #{token}:

        https://www.utc.fr/~mottelet/scilab_for_macOS.html
    EOS
  end
end
