cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.2.5"
  sha256 arm:   "2f412f1116f933c589e4495500873287320d31fce5ffd885a2b4aa64717f2a9d",
         intel: "c2c0431c89d9ced2bf3b70df9ad83aa61b76ceae42e93cf052535b969bc16e86"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg"
  name "Libation"
  desc "Audible audiobook manager and liberator"
  homepage "https://getlibation.com/"

  depends_on macos: :ventura

  app "Libation.app"
  binary "#{appdir}/Libation.app/Contents/MacOS/LibationCli", target: "libationcli"

  zap trash: [
    "~/Library/Application Support/Libation",
    "~/Library/Preferences/org.libation.macos.plist",
  ]
end
