cask "jetbrains-toolbox" do
  version "1.22,1.22.10685"

  if Hardware::CPU.intel?
    sha256 "29cf83939ba9bd50a783fe99954e3d5a539b5812bb4802a5470949e2e003a792"

    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.after_comma}.dmg"
  else
    sha256 "2bfee48d00d1d35533d510eb5f2fd6baef4740a1171d391c2e830879638b5269"

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
