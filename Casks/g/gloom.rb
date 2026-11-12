cask "gloom" do
  version "0.20.8"
  sha256 "f8c94729cb3d71ad1a3f6ff1d3b291f9bfc97b477fa75529114c0c8db3967411"

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
