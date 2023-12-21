cask "elgato-camera-hub" do
  version "1.8.1.1450"
  sha256 "f056585a9e8e6c590c1017530869ae03676a3156649e232c90249f67e0e897d4"

  url "https://edge.elgato.com/egc/macos/echm/#{version.major_minor_patch}/Camera_Hub_#{version}.pkg"
  name "Elgato Camera Hub"
  desc "Elgato FACECAM configuration tool"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://www.elgato.com/graphql?query=query%20contentJson(%24identifier%3A%5BString%5D%24contentType%3AString%24options%3AContentJsonOptionsInput)%7BcontentJson(identifiers%3A%24identifier%20contentType%3A%24contentType%20options%3A%24options)%7Bidentifier%20entries%7D%7D&operationName=contentJson&variables=%7B%22contentType%22%3A%22downloads%22%2C%22identifier%22%3A%5B%22downloads%22%5D%2C%22options%22%3A%7B%22level%22%3A1%7D%7D&locale=en-US"
    regex(/Camera[._-]Hub[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "Camera_Hub_#{version}.pkg"

  uninstall launchctl: "com.elgato.CameraHub",
            quit:      "com.displaylink.DisplayLinkUserAgent",
            signal:    ["TERM", "com.elgato.CameraHub"],
            pkgutil:   [
              "com.displaylink.displaylinkmanagerapp",
              "com.elgato.CameraHub.Installer",
            ],
            delete:    "/Applications/Elgato Camera Hub.app"

  zap trash: [
    "~/Library/Logs/CameraHub",
    "~/Library/Preferences/com.elgato.CameraHub.plist",
  ]
end
