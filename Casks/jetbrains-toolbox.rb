cask "jetbrains-toolbox" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.22,1.22.10774"

  if Hardware::CPU.intel?
    sha256 "7ce32584ecc7012930d72f9871e5fba57d205a56726d1cb786bc0177ee3756eb"
  else
    sha256 "c3502cb63298876233e8ed66a1db8b9b90ab43501fe4ea8c9666970fdd2d95ff"
  end

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.after_comma}#{arch}.dmg"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox-app/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["TBA"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "JetBrains Toolbox.app"

  zap trash: [
    "~/Library/Application Support/JetBrains/Toolbox",
    "~/Library/Logs/JetBrains/Toolbox",
    "~/Library/Preferences/com.jetbrains.toolbox.renderer.plist",
    "~/Library/Saved Application State/com.jetbrains.toolbox.savedState",
  ]
end
