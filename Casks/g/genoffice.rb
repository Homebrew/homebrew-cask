cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.919"
  sha256 arm:          "c5b32927615feff7bf88982c49551901daf5145add429b0b7db86a558a0aecf1",
         intel:        "86f78a5e4b5f9fd28299c4413d8f3d13eb3559a8b50736dd1e93d6f11734f37c",
         x86_64_linux: "2268f9f154b90539787234bf97d8298da199c4a3af38ba099054cadff7650850"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "GenOffice.app"
    binary "#{appdir}/GenOffice.app/Contents/Resources/cli/genoffice"

    uninstall launchctl: "application.com.genoffice.app.*",
              quit:      "com.genoffice.app"

    zap trash: [
      "~/.genoffice",
      "~/.local/bin/genoffice",
      "~/Library/Application Support/GenOffice",
      "~/Library/Preferences/com.genoffice.app.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "GenOffice-#{version}.AppImage", target: "GenOffice.AppImage"
  end

  url "https://github.com/genspark-ai/genoffice/releases/download/v#{version}/GenOffice-#{version}#{arch}.#{url_end}"
  name "GenOffice"
  desc "Open-source AI office suite"
  homepage "https://genoffice.ai/"
end
