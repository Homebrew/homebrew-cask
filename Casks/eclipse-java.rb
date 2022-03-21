cask "eclipse-java" do
  version "4.23.0,2022-03"

  if Hardware::CPU.intel?
    sha256 "8e8429b19fc804f12477e27df07e968bbfa052c80bf0f768d948e5aaeac0281d"
  else
    sha256 "bab60d9eebc38d58dc49b07eb0bc52c4cd4b01d5f15116659806c74478c71527"
  end

  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
