cask "macfusion" do
  version "2.0.4"
  sha256 "6693241fd54d686013864adb86a6ea7eef6c1291546573b628b3ddf7889ef71c"

  url "http://macfusionapp.org/releases/Macfusion_#{version}.zip"
  appcast "http://macfusionapp.org/appcast.xml"
  name "Macfusion"
  homepage "http://macfusionapp.org/"

  conflicts_with cask: "macfusion-ng"
  depends_on formula: "sshfs"
  depends_on macos: "<= :mojave"

  app "Macfusion.app"

  # fix broken bundled sshfs, see https://github.com/osxfuse/osxfuse/wiki/SSHFS#macfusion
  postflight do
    Dir.chdir("#{appdir}/Macfusion.app/Contents/PlugIns/sshfs.mfplugin/Contents/Resources") do
      File.rename("sshfs-static", "sshfs-static.orig")
      File.symlink("#{HOMEBREW_PREFIX}/bin/sshfs", "sshfs-static")
    end
  end

  uninstall launchctl: "org.mgorbach.macfusion2.macfusionAgent"

  zap trash: [
    "~/Library/Application Support/Macfusion",
    "~/Library/Caches/org.mgorbach.macfusion2",
    "~/Library/Logs/MacFusion2.log",
    "~/Library/Preferences/org.mgorbach.macfusion2.plist",
    "~/Library/Saved Application State/org.mgorbach.macfusion2.savedState",
  ]
end
