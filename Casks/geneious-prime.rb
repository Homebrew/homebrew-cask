cask "geneious-prime" do
  version "2023.1.2"
  sha256 "fc2fd483ba16e5de87649312a326bcd65868533f7459de4782ebe180ce8f2cb6"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name "Geneious Prime"
  desc "Bioinformatics software platform"
  homepage "https://www.geneious.com/"

  livecheck do
    url "https://assets.geneious.com/documentation/geneious/release_notes.html"
    regex(/href="#v?(\d+(?:\.\d+)+)">/i)
  end

  app "Geneious Prime.app"

  zap trash: [
    "~/Geneious #{version.major}.0 Data",
    "~/Library/Application Support/Geneious",
    "~/Library/Preferences/com.biomatters.*.plist",
    "~/Library/Preferences/Geneious.in.use.vmoptions",
    "~/Library/Saved Application State/com.biomatters.Geneious.savedState",
  ]
end
