cask "box-tools" do
  version "4.26.0.1109"
  sha256 :no_check

  url "https://e3.boxcdn.net/box-installers/boxedit/mac/currentrelease/BoxToolsInstaller.dmg",
      verified: "e3.boxcdn.net/box-installers/boxedit/mac/currentrelease/"
  name "Box Tools"
  desc "Create and edit any file directly from a web browser"
  homepage "https://www.box.com/resources/downloads"

  livecheck do
    url :url
    strategy :extract_plist
  end

  apps = [
    "Device Trust",
    "Edit",
    "Local Com Server",
    "Tools Custom Apps",
  ]
  apps.each do |a|
    app "Install Box Tools.app/Contents/Resources/Box #{a}.app",
        target: "~/Library/Application Support/Box/Box Edit/Box #{a}.app"
  end

  uninstall quit: [
    "com.Box.Box-Edit",
    "com.box.Box-Local-Com-Server",
  ]

  zap trash: "~/Library/Application Support/Box/Box Edit",
      rmdir: "~/Library/Application Support/Box"

  caveats <<~EOS
    Box Edit currently only works with Safari and Firefox.
    Restart your browser to load the plugin.
  EOS
end
