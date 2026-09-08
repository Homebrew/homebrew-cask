cask "openlens" do
  arch arm:   on_system_conditional(macos: "-arm64", linux: ".arm64"),
       intel: on_system_conditional(linux: ".x86_64")
  os macos: "dmg", linux: "AppImage"

  version "6.5.2-366"
  sha256 arm:          "2c53fa3ccf383e10c8a711ba23a6277800415173ba45ef12597b656c9d818e29",
         intel:        "22f94468f4ccfe4f24c0580a04f76baa9edadf7f9a6d735d677f828372c139e7",
         arm64_linux:  "c94e63207315d93c14f7d7d73ef33dd6bd609d65fbfb0a0fb4a7e445e085beba",
         x86_64_linux: "64096d012fd4ff18789024fbbd0f8d1c0cd657bcf4b84e463102021ca49d8fc9"

  on_macos do
    app "OpenLens.app"

    zap trash: [
      "~/Library/Application Support/OpenLens",
      "~/Library/Logs/OpenLens",
    ]
  end
  on_linux do
    app_image "OpenLens-#{version}#{arch}.AppImage", target: "OpenLens.AppImage"

    zap trash: "~/.config/OpenLens"
  end

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.#{os}"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true
end
