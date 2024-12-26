cask "libresprite" do
    version "1.0"
    sha256 "85004254166204291a9c08007592cb6d38ac89a01faec3aa37c037a39d86b9eb"

    url "https://github.com/LibreSprite/LibreSprite/releases/download/v#{version}/LibreSprite-macos-x86_64.zip"
      verified: "github.com/LibreSprite/LibreSprite/"
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
        "~/Library/Application Support/LibreSprite",
        "~/Library/Preferences/org.libresprite.Libresprite.plist",
    ]

    caveats do
        requires_rosetta
      end
end