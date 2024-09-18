cask "intellij-idea" do
  arch arm: "-aarch64"

  version "2024.2.2,242.22855.74"
  sha256 arm:   "27b777df1b2ba531d68ef30ebaaf11460a8ab055da8afcfb4886fce3d04d0227",
         intel: "f2528d8f6f983cbfe16e51221a71009ac3a46e8971259bfeb67471253c0d93f0"

  url "https://download.jetbrains.com/idea/ideaIU-#{version.csv.first}#{arch}.dmg"
  name "IntelliJ IDEA Ultimate"
  desc "Java IDE by JetBrains"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release"
    strategy :json do |json|
      json["IIU"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "intellij-idea@eap"
  depends_on macos: ">= :high_sierra"

  app "IntelliJ IDEA.app"
  binary "#{appdir}/IntelliJ IDEA.app/Contents/MacOS/idea"

  zap trash: [
    "~/Library/Application Support/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Caches/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Logs/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.plist",
    "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/jetbrains.idea.*.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
