cask "eclipse-platform" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.22,202111241800"

  if Hardware::CPU.intel?
    sha256 "923dca09cebf4ebc97fdf7151f2dc984b8c7c425a452df7167e94e7aba473cc2"
  else
    sha256 "4c9ac2e2be62776f408016e1935d80a0ca3783f1a19e4aa7f013cdb66e93fc0a"
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
