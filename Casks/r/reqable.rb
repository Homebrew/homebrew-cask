cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "50a1509ccc1d9426ece35b306cf1476a848c5117557d90ca192530bdb1ce1efd",
         intel: "79122a1eadcd0ae783e7d8f8843e6a4b69340d6165daf61439192a08012500da"

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
