cask "ente" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "1.7.27"

  on_macos do
    sha256 "13430c4c2a01150bdca8fb8fd180a270428f33c46a7be9956e79e1b408d486d7"

    depends_on macos: :monterey

    app "ente.app"

    zap trash: [
      "~/Library/Application Support/ente",
      "~/Library/Logs/ente",
      "~/Library/Preferences/io.ente.bhari-frame.helper.plist",
      "~/Library/Preferences/io.ente.bhari-frame.plist",
      "~/Library/Saved Application State/io.ente.bhari-frame.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "960e19936956d6e7fd4a9a595c14295862cd3a3ca29fadca0bbce8f63282aa98",
           x86_64_linux: "2acb978ec4ee85dcf71d3b97abfd54741b6b9c331afe1a06ffb9b2290c64eec0"

    app_image "ente-#{version}-#{arch}.AppImage", target: "Ente.AppImage"
  end

  url "https://github.com/ente-io/photos-desktop/releases/download/v#{version}/ente-#{version}-#{url_end}",
      verified: "github.com/ente-io/photos-desktop/"
  name "Ente"
  desc "Desktop client for Ente Photos"
  homepage "https://ente.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
