cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.60.0"
  sha256 arm:   "33581483d0aea23afcc4d937f72e8ad361dc800edb5dff39f0088385b7112453",
         intel: "9482209d341071df79065de2723e4f13164553dce5c1b390f289c80bcae9d721"

  url "https://caido.download/releases/v#{version}/caido-desktop-v#{version}-mac-#{arch}.dmg"
  name "Caido"
  desc "Web security auditing toolkit"
  homepage "https://caido.io/"

  livecheck do
    url "https://api.caido.io/releases/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "Caido.app"
  binary "#{appdir}/Caido.app/Contents/Resources/bin/caido-cli"

  zap trash: [
    "~/Library/Application Support/Caido",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.caido.caido.sfl*",
    "~/Library/Application Support/io.caido.Caido",
    "~/Library/Logs/Caido",
    "~/Library/Preferences/io.caido.Caido.plist",
    "~/Library/Saved Application State/io.caido.Caido.savedState",
  ]
end
