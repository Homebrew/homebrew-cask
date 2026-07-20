cask "itermcompanion" do
  version "1.0"
  sha256 "2a6cea5e99a75d53ae673476ea5042ced6e4b2cad3ccbdbf5e54c89065f6e748"

  url "https://iterm2.com/downloads/companion-plugin/iTermCompanion-#{version}.zip"
  name "iTerm2 Companion Plugin"
  desc "Pairs iTerm2 with the iTerm2 Companion iPhone app"
  homepage "https://iterm2.com/companion-plugin.html"

  livecheck do
    url :homepage
    regex(%r{href=.*?/iTermCompanion[._-](\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: :catalina

  app "iTermCompanion.app"

  zap trash: "~/Library/Containers/com.googlecode.iterm2.iTermCompanion"
end
