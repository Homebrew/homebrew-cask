cask "eclipse-platform" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.23,202203080310"

  if Hardware::CPU.intel?
    sha256 "1c087f17a49eeffaa2405f224a89a068d02f896c4461c79647cb73d233285a3a"
  else
    sha256 "50a8a29dfdfde7b34eaeeac59e8c50d77bb5fb4b6198acec44977bdc3b9bc952"
  end

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
