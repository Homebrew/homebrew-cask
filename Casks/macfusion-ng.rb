cask "macfusion-ng" do
  version "2.1.1-dev.3"
  sha256 "3e6e356f36623dde805aa3de941e29f6256b02cfe0720bcbd70df4526e2a7198"

  url "https://github.com/macfusion-ng/macfusion#{version.major}/releases/download/#{version}/Macfusion.zip"
  appcast "https://github.com/macfusion-ng/macfusion#{version.major}/releases.atom"
  name "Macfusion"
  homepage "https://github.com/macfusion-ng/macfusion#{version.major}/"

  conflicts_with cask: "macfusion"
  depends_on formula: "sshfs"

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
