cask "aladin" do
  arch arm: "arm", intel: "amd"

  version "12.060"
  sha256 :no_check

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
    args:       ["-q"],
  }

  uninstall script: {
    executable: "/Applications/Aladin Sky Atlas/Aladin Sky Atlas Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  zap trash: "~/.aladin"
end
