cask "geneious-prime" do
  version "2024.0.3"
  sha256 "b8eff55ca14199dbcf99f8b9995e2fc9fdb3202a61e0b9f039ddb698e5c2c19b"

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
