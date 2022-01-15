cask "mars" do
  version "4.5,Aug2014"
  sha256 "ac340b676ba2b62246b9df77e62f81ad4447bcfd329ab539716bcd09950b7096"

  url "https://courses.missouristate.edu/KenVollmar/mars/MARS_#{version.csv.first.dots_to_underscores}_#{version.csv.second}/Mars#{version.csv.first.dots_to_underscores}.jar"
  name "MARS"
  desc "Mips Assembly and Runtime Simulator"
  homepage "https://courses.missouristate.edu/KenVollmar/mars/index.htm"

  livecheck do
    url "https://courses.missouristate.edu/KenVollmar/mars/download.htm"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?MARS_(\d+(?:_\d+)*)_(\w+\d+)/Mars(?:\d+(?:_\d+)*)\.jar}i)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  container type: :naked

  app "Mars#{version.before_comma.dots_to_underscores}.jar", target: "Mars.jar"

  caveats do
    depends_on_java "9+"
  end
end
