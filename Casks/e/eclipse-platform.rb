cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30,202312010110"
  sha256 arm:   "b205f4200eda0c962e03cf62c81454294bcd8069a5a95d5f6946f99616027666",
         intel: "f7aecb68a7fd516e89f840877a4e722c8c992674153cf8e1877cdf78ba3c3734"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.csv.first}-#{version.csv.second}/eclipse-SDK-#{version.csv.first}-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse SDK"
  desc "SDK for the Eclipse IDE"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://download.eclipse.org/eclipse/downloads/"
    regex(%r{href=.*/R-(\d+(?:\.\d+)*)-(\d+)/}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"

  zap trash: [
    "~/.eclipse",
    "~/Library/Preferences/org.eclipse.sdk.ide.plist",
    "~/eclipse-workspace",
  ]
end
