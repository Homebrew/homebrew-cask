cask "jetbrains-toolbox" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.22,1.22.10740"

  if Hardware::CPU.intel?
    sha256 "796b4f178f9fef219390922a1d94f05de38032ffbd4af872d22dac542b228e3f"
  else
    sha256 "48aa9b644f7af5d0d7ee1996e8d4d19cc7f6158fb761b2238ab0542a4e6e9dd4"
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
