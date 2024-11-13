cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.61.2"
  sha256 arm:   "0327e35cd156acba980135c23344648cf28f90c3a4e486b87f13188b5c388b4f",
         intel: "0df0d23ffadff27304d47f2a8a6665579d05a448385f298fd26f7f3b2b940517"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
