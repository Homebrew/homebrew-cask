cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.35,202502280140"
  sha256 arm:   "c704fd1547a32a55561ce294325001f798417c0eeabc52a690a0939bf2498741",
         intel: "9cd7952afbd921808981a1dbefedb02a62014bfa088ac1165e37492021971252"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.csv.first}-#{version.csv.second}/eclipse-SDK-#{version.csv.first}-macosx-cocoa-#{arch}.dmg&mirror_id=1"
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
    "~/eclipse-workspace",
    "~/Library/Preferences/org.eclipse.sdk.ide.plist",
  ]
end
