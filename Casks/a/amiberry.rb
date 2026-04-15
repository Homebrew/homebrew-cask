cask "amiberry" do
  version "8.1.5"
  sha256 "cc2dc6d7fefcc1c19ae205c3a435a588923ff24f644c870002666b84ddb3c6d7"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-#{version}-macOS-universal.dmg",
      verified: "github.com/BlitterStudio/amiberry/"
  name "Amiberry"
  desc "Amiga emulator"
  homepage "https://amiberry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry"
end
