cask "papyrus" do
  version "6.3.0,2022-12"
  sha256 "8174d7705c3d65d070a715185caab02aefc17d7594bdd60d82c1f6f265ca5846"

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
