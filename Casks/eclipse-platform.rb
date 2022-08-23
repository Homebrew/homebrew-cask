cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.24,202206070700"
  sha256 arm:   "dd8988a3d60aedc8bc21de79bc5ef299037c0da8d23bdc367ecaf9f3799340d5",
         intel: "b33bcf7427eb9b969093b8a6cd3e2fb7e357acbc994cbc4baa95e739ab4425cd"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.csv.first}-#{version.csv.second}/eclipse-SDK-#{version.csv.first}-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse SDK"
  desc "SDK for the Eclipse IDE"
  homepage "https://eclipse.org/"

  livecheck do
    url "http://download.eclipse.org/eclipse/downloads/"
    regex(%r{href=.*/R-(\d+(?:\.\d+)*)-(\d+)/}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"
end
