cask "prepros" do
  arch arm: "-Mac"

  version "7.40.0"
  sha256 arm:   "a04b074606ab8506c0d056f804291216d947936ac2b5b14ff173a5a2e49d0c97",
         intel: "ab4e89246984c02620a81cfb0c725fcd332f51dfb9c8791edb1cffdc3cc181d9"

  url "https://downloads.prepros.io/v#{version.major}/#{version}/Prepros#{arch}-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/api/v#{version.major}/version/darwin/stable"
    strategy :json do |json|
      json.dig("data", "version")
    end
  end

  depends_on :macos

  app "Prepros.app"

  zap trash: [
    "~/Library/Application Support/Prepros",
    "~/Library/Application Support/Prepros-#{version.major}",
    "~/Library/Preferences/io.prepros.prepros.plist",
    "~/Library/Saved Application State/io.prepros.prepros.savedState",
  ]
end
