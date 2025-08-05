cask "dmenu-mac" do
  version "0.7.2"
  sha256 "db82a9ac07e1fca23e31db2e458979d12fce846a8948e5a053fd8d317967e469"

  url "https://github.com/oNaiPs/dmenu-mac/releases/download/#{version}/dmenu-mac.zip"
  name "dmenu-mac"
  desc "Keyboard-only application launcher"
  homepage "https://github.com/oNaiPs/dmenu-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "dmenu-mac.app"
  binary "#{appdir}/dmenu-mac.app/Contents/Resources/dmenu-mac"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
  ]
end
