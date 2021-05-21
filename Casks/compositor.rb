cask "compositor" do
  version "1.17.0"
  sha256 "c9792d631e796e5bf8ddcd35ba90fe64ec42e9ce051c520a4b7516a5754cdda8"

  url "https://compositorapp.com/updates/Compositor_#{version}.zip"
  name "Compositor"
  homepage "https://compositorapp.com/"

  livecheck do
    url "https://compositorapp.com/updates/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Compositor.app"

  zap trash: [
    "~/Library/Application Scripts/com.microlarge.Compositor",
    "~/Library/Containers/com.microlarge.Compositor",
    "~/Library/Preferences/com.microlarge.Compositor.plist",
  ]
end
