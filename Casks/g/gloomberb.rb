cask "gloomberb" do
  version "0.17.5"
  sha256 "384ef95123957e28bd849ad5cb06ac493a306a4b842db9e825aca2c0e5f747cc"

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
