cask "insomnia" do
  os macos: "dmg", linux: "AppImage"

  version "13.5.0"
  sha256 arm:          "bf10dc8e0bd59636938b9122fc957632f74e5a8843b6f511101c9083c3a73337",
         intel:        "bf10dc8e0bd59636938b9122fc957632f74e5a8843b6f511101c9083c3a73337",
         x86_64_linux: "c9360782ffdd0a9129ab67a1636189db5d21409c7dcc2410ec33fc9d866137c5"

  on_macos do
    depends_on macos: :monterey

    app "Insomnia.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.insomnia.app.sfl*",
      "~/Library/Application Support/Insomnia",
      "~/Library/Caches/com.insomnia.app",
      "~/Library/Caches/com.insomnia.app.ShipIt",
      "~/Library/Cookies/com.insomnia.app.binarycookies",
      "~/Library/HTTPStorages/com.insomnia.app",
      "~/Library/Logs/Insomnia",
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
    major = version.major
    major = major.to_i - 1 if version.end_with?(".0.0")
    url "https://updates.insomnia.rest/builds/check/mac?v=#{major}.0.0&app=com.insomnia.app&channel=stable"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: "insomnia@alpha"
end
