cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.0"
  sha256 arm:   "ec30c56bea3aeb53bfb0cb61ac31b863b530d0542698b74ddd40089b218e7b8b",
         intel: "0ae3d88ca89b2df3e8e524607066a5a5a262bb0090aef0af1b78b7c916733df8"

  url "https://api.reqable.com/download?platform=macos&arch=#{arch}"
  name "Reqable"
  desc "Advanced API Debugging Proxy"
  homepage "https://reqable.com/"

  livecheck do
    url "https://api.reqable.com/version/appcast?platform=macos&arch=#{arch}&locale=en-US"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Reqable.app"

  uninstall_postflight do
    stdout, * = system_command "/usr/bin/security",
                               args: ["find-certificate", "-a", "-c", "Reqable Proxy", "-Z"],
                               sudo: true
    hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
    hashes.each do |h|
      system_command "/usr/bin/security",
                     args: ["delete-certificate", "-Z", h],
                     sudo: true
    end
  end

  zap trash: [
    "~/Library/Caches/Reqable",
    "~/Library/Preferences/com.reqable.macosx.plist",
  ]
end
