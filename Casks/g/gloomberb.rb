cask "gloomberb" do
  version "0.19.1"
  sha256 "321b9dafb1cc985d6fabe9755afd15a9de8ae43e028da2147441f326d20c784d"

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
  depends_on :macos

  app "Gloomberb.app"
  binary "#{appdir}/Gloomberb.app/Contents/Resources/gloomberb"

  uninstall quit: "com.vincelwt.gloomberb"

  zap trash: [
    "~/.gloomberb",
    "~/Library/WebKit/com.vincelwt.gloomberb",
  ]
end
