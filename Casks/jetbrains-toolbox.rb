cask "jetbrains-toolbox" do
  version "1.20,1.20.8352"

  if Hardware::CPU.intel?
    sha256 "03ff8595b8c42397a441376502622a687c66f8281a5c3d458f0c6bee863e736c"

    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.after_comma}.dmg"
  else
    sha256 "60340a04ff154749241f61a4bbe0e8c0e9b21a43a5aa5fa401007a888e00dfcc"

    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.after_comma}-arm64.dmg"
  end

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
    "~/Library/Saved Application State/com.jetbrains.toolbox.savedState",
    "~/Library/Logs/JetBrains/Toolbox",
    "~/Library/Preferences/com.jetbrains.toolbox.renderer.plist",
    "~/Library/Application Support/JetBrains/Toolbox",
  ]
end
