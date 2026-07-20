cask "nextline" do
  version "0.9.1"
  sha256 "fd7fd47a515a31525fc1c8b4ca28a91370916ec7945a88d12bbc8d9df182ef88"

  url "https://zalex666.github.io/inline-autocomplete/Nextline-#{version}.dmg",
      verified: "zalex666.github.io/inline-autocomplete/"
  name "Nextline"
  desc "System-wide inline autocomplete powered by a local LLM"
  homepage "https://www.thenextline.app/"

  livecheck do
    url "https://zalex666.github.io/inline-autocomplete/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Nextline.app"

  uninstall quit: "app.inline.Inline"

  zap trash: [
    "~/Library/Application Support/Inline",
    "~/Library/Caches/app.inline.Inline",
    "~/Library/HTTPStorages/app.inline.Inline",
    "~/Library/Preferences/app.inline.Inline.plist",
  ]
end
