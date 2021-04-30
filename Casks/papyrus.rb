cask "papyrus" do
  version "5.0.0,2020-12"
  sha256 "b9f327c40d2037fbe75fa7d11bb3f418baa31169dd8ea34c966c8db273a2aaaf"

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  name "Papyrus"
  homepage "https://eclipse.org/papyrus/"

  livecheck do
    url "https://www.eclipse.org/papyrus/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/papyrus-(\d+(?:-\d+)*)-(\d+(?:\.\d+)*)-macosx64\.tar\.gz}i)
      "#{match[2]},#{match[1]}"
    end
  end

  app "Papyrus.app"

  caveats do
    depends_on_java "8+"
  end
end
