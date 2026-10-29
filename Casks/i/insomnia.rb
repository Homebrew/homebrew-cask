cask "insomnia" do
  os macos: "dmg", linux: "AppImage"

  version "13.4.0"
  sha256 arm:          "d07738de010d5d3aa4a850f3dd788ae403ec38b7f6676862d2b9c687893c99c1",
         intel:        "d07738de010d5d3aa4a850f3dd788ae403ec38b7f6676862d2b9c687893c99c1",
         x86_64_linux: "aa28f6916b3b65828cb7b27a86652fda6090a98fc46ec947d90f90ef18d6497c"

  on_macos do
    depends_on macos: :monterey

    app "Insomnia.app"

    zap trash: [
      "~/Library/Application Support/Insomnia",
      "~/Library/Caches/com.insomnia.app",
      "~/Library/Caches/com.insomnia.app.ShipIt",
      "~/Library/Cookies/com.insomnia.app.binarycookies",
      "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
      "~/Library/Preferences/com.insomnia.app.helper.plist",
      "~/Library/Preferences/com.insomnia.app.plist",
      "~/Library/Saved Application State/com.insomnia.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Insomnia.Core-#{version}.AppImage", target: "Insomnia.AppImage"

    zap trash: "~/.config/Insomnia"
  end

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.#{os}"
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  # The upstream server only returns a JSON response if the provided version is
  # lower than the newest version. This uses a X.0.0 version in the `url` to
  # work around it but this won't work for a new major version (e.g., 1.0.0)
  # where the provided version and newest version are equal, so this uses the
  # previous major for a new major release.
  livecheck do
    url "https://updates.insomnia.rest/builds/check/mac?v=#{version.end_with?(".0.0") ? (version.major.to_i - 1) : version.major}.0.0&app=com.insomnia.app&channel=stable"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: "insomnia@alpha"
end
