cask "quick-search" do
  version "1.0.0"
  sha256 "aed8a31b7fcd15760c2f657efdb12c0ecd67f7c06b1a3abc760b44ef3afe2ad7"

  url "https://github.com/taka-2120/QuickSearchMac/releases/download/#{version}/QuickSearch.dmg"
  name "QuickSearch"
  desc "Search on Web Quickly"
  homepage "https://github.com/taka-2120/QuickSearchMac"

  depends_on macos: ">= :sequoia"

  app "QuickSearch.app"

  # No zap stanza required
end
