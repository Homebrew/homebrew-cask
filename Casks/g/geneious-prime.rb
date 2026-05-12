cask "geneious-prime" do
  version "2026.1.1"
  sha256 "e7103059da4a4aea520ee10fd5d0896d3067444f91cdb75cb8055be8b93888b4"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name "Geneious Prime"
  desc "Bioinformatics software platform"
  homepage "https://www.geneious.com/"

  livecheck do
    url "https://www.geneious.com/updates"
    regex(/href=.*?Geneious[._-]Prime[._-]mac64[._-]v?(\d+(?:[._]\d+)+).*?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on :macos

  app "Geneious Prime.app"

  zap trash: [
    "~/Geneious #{version.major}.0 Data",
    "~/Library/Application Support/Geneious",
    "~/Library/Preferences/com.biomatters.*.plist",
    "~/Library/Preferences/Geneious.in.use.vmoptions",
    "~/Library/Saved Application State/com.biomatters.Geneious.savedState",
  ]
end
