cask "gloom" do
  version "0.20.22"
  sha256 "cbb4941a24ce86eda110effb955f8f228a8f8e65d5444c3760c97b2e06032ad9"

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
