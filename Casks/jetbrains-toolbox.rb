cask "jetbrains-toolbox" do
  version "1.21,1.21.9698"

  if Hardware::CPU.intel?
    sha256 "09b69252b0d2c8609caa44adafed7ac859dcf67b36d29a26c987074e43211595"

    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.after_comma}.dmg"
  else
    sha256 "9d563bdb87c4191457abc92a7ebeef281740faeb1028c01a25eff38ad007a16e"

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
