cask "bluej" do
  version "5.0.1"
  sha256 "94dbfb5ca4da48bf0cfd2b5679fb36be432161b4fabc00376f05e992bdfe2f63"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name "BlueJ"
  desc "Java Development Environment designed for begginers"
  homepage "https://www.bluej.org/"

  livecheck do
    url "https://www.bluej.org"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/BlueJ-mac-(\d+)(\d+)(\d+)\.zip}i)
      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  app "BlueJ #{version}/BlueJ.app"
end
