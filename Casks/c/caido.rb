cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.57.0"
  sha256 arm:   "1a6a4c9da191ee0633d51bd23b9c63f40037c54d669f62012276a499592e1bb0",
         intel: "d1508b8e5d0ba5efb83209eba7a5fc0292568c08ee8646993b14383f70bc3123"

  url "https://caido.download/releases/v#{version}/caido-desktop-v#{version}-mac-#{arch}.dmg",
      verified: "caido.download/"
  name "Caido"
  desc "Web security auditing toolkit"
  homepage "https://caido.io/"

  livecheck do
    url "https://api.caido.io/releases/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :big_sur

  app "Caido.app"
  binary "#{appdir}/Caido.app/Contents/Resources/bin/caido-cli"

  zap trash: [
    "~/Library/Application Support/Caido",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.caido.caido.sfl*",
    "~/Library/Application Support/io.caido.Caido",
    "~/Library/Preferences/io.caido.Caido.plist",
    "~/Library/Saved Application State/io.caido.Caido.savedState",
  ]
end
