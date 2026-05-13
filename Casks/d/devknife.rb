cask "devknife" do
  version "1.13.2"
  sha256 "f8c436e19c3a670c769e28edbb57a26df3073156e5af85dcd85acbdb1c3ccd9e"

  url "https://files.solotuna.com/devknife/DevKnife-#{version}.dmg",
      verified: "files.solotuna.com/devknife/"
  name "DevKnife"
  desc "Collection of handy developer tools"
  homepage "https://devknife.app/"

  livecheck do
    url "https://files.solotuna.com/devknife/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DevKnife.app"

  zap trash: [
    "~/Library/Application Support/com.solotuna.devknife/",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
