cask "aladin" do
  arch arm: "arm", intel: "amd"

  version "12.060"
  sha256 arm:   "d196277ef3c2964d49c34f0ca4b393711470d71f67a253d7eb82674b2ca2c9c4",
         intel: "4c03dfaebde6585b7c58cea8a442219bd387a9075ad7560028875cf0cf26b616"

  url "https://aladin.cds.unistra.fr/java/Aladin.#{arch}.dmg"
  name "Aladin Desktop"
  desc "Interactive sky atlas"
  homepage "https://aladin.cds.unistra.fr/AladinDesktop/"

  livecheck do
    url "https://aladin.cds.unistra.fr/java/nph-aladin.pl?frame=downloading#Official"
    regex(%r{<h1>\s*Official\s+version\s*(?:<[^/>]*>\s*)?v?(\d+(?:\.\d+)+)}i)
  end

  installer script: {
    executable: "Aladin Sky Atlas Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"], # install4j, Unattended mode
  }

  uninstall script: {
    executable: "/Applications/Aladin Sky Atlas/Aladin Sky Atlas Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  zap trash: "~/.aladin"

  # Aladin 12 has a built-in jre
  # caveats do
  # depends_on_java
  # end
end
