cask "papyrus" do
  version "6.6.0,2023-12"
  sha256 "656df61fdae0a724a995307d0d95467651bf50d309fea65b7c10c7417dddc482"

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.csv.second}/#{version.csv.first}/papyrus-#{version.csv.second}-#{version.csv.first}-macosx64.tar.gz&r=1"
  name "Papyrus"
  desc "Model-Based Engineering tool"
  homepage "https://eclipse.org/papyrus/"

  livecheck do
    url "https://eclipse.dev/papyrus/download.html"
    regex(%r{href=.*?/papyrus-(\d+(?:-\d+)*)-(\d+(?:\.\d+)*)-macosx64\.tar\.gz}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Papyrus.app"

  caveats do
    depends_on_java "11+"
  end
end
