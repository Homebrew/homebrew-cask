cask "obs@beta" do
  arch arm: "apple", intel: "intel"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "32.2.0-rc2"
  sha256 arm:   "19dcdd8fe01d916f63617db4e4d62501e4881f6a737359e3462101fe76d8d3df",
         intel: "dfe081310f8444fd38912763dee1b8db5c1164a17da6a78d2cff272638e22681"

  url "https://cdn-fastly.obsproject.com/downloads/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/forum/list/test-builds.20/"

  livecheck do
    url "https://obsproject.com/osx_update/updates_#{livecheck_folder}_v2.xml"
    regex(/obs[._-]studio[._-](\d+(?:[.-]\d+)+(?:(?:-beta)|(?:-rc))\d+)[._-]macos/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        next if item.channel != "beta"

        item.url&.[](regex, 1)
      end
    end
  end

  auto_updates true
  conflicts_with cask: "obs"
  depends_on macos: :monterey

  app "OBS.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "obs.wrapper.sh",
                  target:  "obs",
                  content: <<~EOS
                    #!/bin/bash
                    exec '#{appdir}/OBS.app/Contents/MacOS/OBS' "$@"
                  EOS

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
