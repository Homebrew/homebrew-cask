cask "openin" do
  version "4.4.2"
  sha256 "f38a14729e2f59b7a472461a372953c6d7f9549f633b932207b24a6a8703302b"

  url "https://loshadki.app/openin4/releases/OpenIn-#{version}.app.zip"
  name "OpenIn"
  desc "Route links, emails, and files to your preferred apps"
  homepage "https://loshadki.app/openin4/"

  livecheck do
    url "https://loshadki.app/openin4/releases/appcast.xml"
    regex(/OpenIn[._-]v?(\d+(?:[.-]\d+)+)\.app\.zip/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "OpenIn.app"

  zap trash: [
    "~/Library/Application Scripts/app.loshadki.OpenIn.*",
    "~/Library/Application Scripts/app.loshadki.OpenInJSExecutor",
    "~/Library/Containers/app.loshadki.OpenIn.*",
    "~/Library/Containers/app.loshadki.OpenInJSExecutor",
    "~/Library/Group Containers/4QE86VV38D.app.loshadki.OpenIn",
    "~/Library/HTTPStorages/app.loshadki.OpenIn",
    "~/Library/Preferences/app.loshadki.OpenIn.plist",
  ]
end
