cask "gloom" do
  version "0.20.10"
  sha256 "1f177121aa9bf9cd9a5c4ac6681f8dac7c4922ae87575818fbd237840d48738d"

  url "https://github.com/gloom-sh/gloomberb/releases/download/v#{version}/stable-macos-arm64-Gloom.app.zip"
  name "Gloom"
  desc "Finance terminal"
  homepage "https://gloom.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Gloom.app"
  binary "#{appdir}/Gloom.app/Contents/Resources/gloom", target: "gloom"
  binary "#{appdir}/Gloom.app/Contents/Resources/gloomberb", target: "gloomberb"

  uninstall quit: ["com.vincelwt.gloomberb", "sh.gloom.desktop"]

  zap trash: [
    "~/.gloomberb",
    "~/Library/Application Support/com.vincelwt.gloomberb",
    "~/Library/Preferences/com.vincelwt.gloomberb.plist",
    "~/Library/WebKit/com.vincelwt.gloomberb",
  ]
end
