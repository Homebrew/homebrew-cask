cask "jetbrains-toolbox" do
  version "1.20,1.20.8804"

  if Hardware::CPU.intel?
    sha256 "928824a7fdac781e7285edc4ad4034386f03863656399c0b17e65d157595cccf"

    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.after_comma}.dmg"
  else
    sha256 "f6c7b337eb9be64c920bbefbb18d3baf8bfb514d342392a3c2d76eb48844321a"

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
