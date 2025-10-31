cask "devknife" do
  version "1.3.0"
  sha256 "a9ce4a1532033155f38e40b22299820a676169a511dfa75baf046549ab5181c2"

  url "https://files.solotuna.com/devknife/DevKnife-#{version}.dmg",
      verified: "files.solotuna.com/devknife/"
  name "DevKnife"
  desc "Collection of handy developer tools"
  homepage "https://devknife.app/"

  livecheck do
    url "http://files.solotuna.com/devknife/appcast.xml"
    strategy :sparkle, &:short_version
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "DevKnife.app"

  zap trash: [
    "~/Library/Application Support/com.solotuna.devknife/",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
