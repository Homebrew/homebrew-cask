cask "openzfs" do
  version "1.9.4,6f"
  sha256 "4dc027cec9cb2fcbf572c1dfe5b1a31f0e14d3f55f1b4f8787903f8332db838b"

  url "https://openzfsonosx.org/w/images/#{version.after_comma[0]}/#{version.after_comma}/OpenZFS_on_OS_X_#{version.before_comma}.dmg"
  name "OpenZFS on OS X"
  desc "Open source port of OpenZFS"
  homepage "https://openzfsonosx.org/"

  livecheck do
    url "https://openzfsonosx.org/wiki/Downloads"
    strategy :page_match do |page|
      page.scan(%r{href=['"]?/w/images/\d/(\h+)/openzfs[_-]on[_-]os[_-]x[._-](\d+(?:\.\d+)*)\.dmg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
    :el_capitan,
    :sierra,
    :high_sierra,
    :mojave,
    :catalina,
  ]

  if MacOS.version <= :el_capitan
    pkg "OpenZFS on OS X #{version.major_minor_patch} El Capitan.pkg"
  elsif MacOS.version <= :sierra
    pkg "OpenZFS on OS X #{version.major_minor_patch} Sierra.pkg"
  elsif MacOS.version <= :high_sierra
    pkg "OpenZFS on OS X #{version.major_minor_patch} High Sierra.pkg"
  elsif MacOS.version <= :mojave
    pkg "OpenZFS on OS X #{version.major_minor_patch} Mojave.pkg"
  elsif MacOS.version <= :catalina
    pkg "OpenZFS on OS X #{version.major_minor_patch} Catalina.pkg"
  end

  uninstall_preflight do
    uninstall_zfs = "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh"
    File.write(uninstall_zfs, File.read(uninstall_zfs).gsub("$(which zpool)", "/usr/local/bin/zpool"))
    File.write(uninstall_zfs, File.read(uninstall_zfs).gsub("$(which zfs)", "/usr/local/bin/zfs"))
    File.write(uninstall_zfs, File.read(uninstall_zfs).gsub("zpool status", "/usr/local/bin/zpool status"))
    File.write(uninstall_zfs, File.read(uninstall_zfs).gsub("zfs get name", "/usr/local/bin/zfs get name"))
    File.write(uninstall_zfs, File.read(uninstall_zfs).gsub(
                                "sudo /sbin/kextunload -b net.lundman.zfs",
                                "sudo /bin/launchctl unload /Library/LaunchDaemons/org.openzfsonosx.zed.plist && " \
                                "sudo /sbin/kextunload -b net.lundman.zfs",
                              ))
  end

  uninstall delete:    "~/zfsuninstaller.*",
            launchctl: "org.openzfsonosx.zed",
            script:    {
              executable: "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh",
              sudo:       true,
            }

  caveats do
    kext
  end
end
