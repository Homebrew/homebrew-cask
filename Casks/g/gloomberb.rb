cask "gloomberb" do
  version "0.17.0"
  sha256 "90731e2b9d17ae65bebebaaeda6321ae30eae80f0c8e233937bc62b23720aa53"

  url "https://github.com/gloom-sh/gloomberb/releases/download/v#{version}/stable-macos-arm64-Gloomberb.app.zip"
  name "Gloomberb"
  desc "Finance terminal"
  homepage "https://gloom.sh/"

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
