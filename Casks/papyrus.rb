cask "papyrus" do
  version "6.5.0,2023-06"
  sha256 "109edb0ae5be9027dd8e270caa18b3ef8663139f4bef5b5261cc3f1bc1616b2e"

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.csv.second}/#{version.csv.first}/papyrus-#{version.csv.second}-#{version.csv.first}-macosx64.tar.gz&r=1"
  name "Papyrus"
  desc "Model-Based Engineering tool"
  homepage "https://eclipse.org/papyrus/"

  livecheck do
    url "https://www.eclipse.org/papyrus/download.html"
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
