cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.26,202211231800"
  sha256 arm:   "079a94821ce30db38f070f96c7997ea5097b40af84f435cc8360a9f661dd6cdf",
         intel: "fd6d58326119ccae20f6a627f47cdc5f8faee9425562ac2a4c8db559bb8b2a9f"

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
