cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28,202306050440"
  sha256 arm:   "b7ca39d276548e339222b5d0d6761c7b730f3314ce26f986a6e5f966bf00ee9f",
         intel: "98e25190d983a4749edc3762ce87d6a3361f550bc0144866a667965c2c0f5d6c"

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
