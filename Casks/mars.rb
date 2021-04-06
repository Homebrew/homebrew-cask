cask "mars" do
  version "4.5,Aug2014"
  sha256 "ac340b676ba2b62246b9df77e62f81ad4447bcfd329ab539716bcd09950b7096"

  url "https://courses.missouristate.edu/KenVollmar/mars/MARS_#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Mars#{version.before_comma.dots_to_underscores}.jar"
  appcast "https://courses.missouristate.edu/KenVollmar/mars/Help/MarsHelpHistory.html"
  name "MARS"
  desc "Mips Assembly and Runtime Simulator"
  homepage "https://courses.missouristate.edu/KenVollmar/mars/index.htm"

  container type: :naked

  app "Mars#{version.before_comma.dots_to_underscores}.jar", target: "Mars.jar"

  caveats do
    depends_on_java "9+"
  end
end
