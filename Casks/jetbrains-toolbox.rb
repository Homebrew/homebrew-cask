cask "jetbrains-toolbox" do
  version "1.21,1.21.9547"

  if Hardware::CPU.intel?
    sha256 "dad23f5413c7794b7fe6394f950463e8bd000ce9605ea5d2ad34be50c506137e"

    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.after_comma}.dmg"
  else
    sha256 "947d18c9f570b28c42a1eba9edadf680fbdaa8a33693310ad9e0f2e73696256d"

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
