cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.0"
  sha256 arm:   "d56f5678ecd3a3b417c99068b3c5bcd6b0466edd97146b6750e0659bf7c35b18",
         intel: "e61a66df46d381e86bf2b4dfbe08f94ef8d7de9eb80e3a7adfea0230c29857ff"

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
