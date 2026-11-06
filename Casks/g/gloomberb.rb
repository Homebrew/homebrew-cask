cask "gloomberb" do
  version "0.20.2"
  sha256 "663fa0ed667d72cc745998793c1f478d42eda1b6ad1086eddf6e30e65883e590"

  url "https://github.com/gloom-sh/gloomberb/releases/download/v#{version}/stable-macos-arm64-Gloomberb.app.zip"
  name "Gloomberb"
  desc "Finance terminal"
  homepage "https://gloom.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Gloomberb.app"
  binary "#{appdir}/Gloomberb.app/Contents/Resources/gloomberb"

  uninstall quit: "com.vincelwt.gloomberb"

  zap trash: [
    "~/.gloomberb",
    "~/Library/Application Support/com.vincelwt.gloomberb",
    "~/Library/WebKit/com.vincelwt.gloomberb",
  ]
end
