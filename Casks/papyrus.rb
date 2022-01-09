cask "papyrus" do
  version "6.0.0,2021-12"
  sha256 "e6e23d41c41d894ba341eb90f59c11c3a458426ffba581d786cab6825a9b5add"

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.csv.second}/#{version.csv.first}/papyrus-#{version.csv.second}-#{version.csv.first}-macosx64.tar.gz&r=1"
  name "Papyrus"
  desc "Model-Based Engineering tool"
  homepage "https://eclipse.org/papyrus/"

  livecheck do
    url "https://www.eclipse.org/papyrus/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/papyrus-(\d+(?:-\d+)*)-(\d+(?:\.\d+)*)-macosx64\.tar\.gz}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "Papyrus.app"

  caveats do
    depends_on_java "11+"
  end
end
