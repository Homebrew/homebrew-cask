cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.25,202208311800"
  sha256 arm:   "8667d4cc985cf27fff3de0bd7fc7785068038528c555c519adfe3527f112793c",
         intel: "e1aa57ad7be4a2eae6991acc8b82c68cf607a3e0b9080357105b6fc4a4b218d1"

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
