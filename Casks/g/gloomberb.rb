cask "gloomberb" do
  version "0.19.5"
  sha256 "e7276b09e4e943b6fad6b98d93d69044cf94704bbe9e7ed2c200dc1d5ab32845"

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
