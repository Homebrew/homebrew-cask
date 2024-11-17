cask "papyrus" do
  version "6.7.0,2024-06"
  sha256 "d2d3eb4516e062a4942312941aaaba98f3e542564a452fe39906ec4fe4b12a34"

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.csv.second}/#{version.csv.first}/papyrus-#{version.csv.second}-#{version.csv.first}-macosx64.tar.gz&r=1"
  name "Papyrus"
  desc "Model-Based Engineering tool"
  homepage "https://eclipse.org/papyrus/"

  livecheck do
    url "https://eclipse.dev/papyrus/download.html"
    regex(%r{href=.*?/papyrus-(\d+(?:-\d+)*)-(\d+(?:\.\d+)*)-macosx64\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  conflicts_with cask: "morkro-papyrus"

  app "Papyrus.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.papyrus.rcp.product.plist",
    "~/Library/Saved Application State/org.eclipse.papyrus.rcp.product.savedState",
  ]

  caveats do
    depends_on_java "11+"
    requires_rosetta
  end
end
