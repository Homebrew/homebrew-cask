cask "papyrus" do
  version "6.1.0,2022-03"
  sha256 "4847d461c8147953f00860f3fa95b554de59bfc8df8c89e960d01fd2929dd06f"

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
