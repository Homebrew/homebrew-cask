cask "libresprite" do
    version "1.1"
    sha256 "e76532c3bc435d9fd4dd6a6f4d6618f46a9c6b006699882f544e9a316eec658c"

    url "https://github.com/LibreSprite/LibreSprite/releases/download/v#{version}/libresprite-development-macos-arm64.zip"
    name "LibreSprite"
    desc "Open-source program for creating 2D animations, pixel art, and sprites"
    homepage "https://libresprite.github.io/"
  
    livecheck do
      url "https://github.com/LibreSprite/LibreSprite/releases"
      strategy :github_latest
    end

    depends_on macos: ">= :big_sur"
  
    app "LibreSprite.app"
  
    zap trash: [
      "~/Library/Preferences/org.libresprite.Libresprite.plist",
      "~/Library/Application Support/LibreSprite",
    ]
  end