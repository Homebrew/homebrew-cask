cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "cba8c49dbd9094f74f9c7eb0594f4e18cd1bb40eae7884c23fa7462f47c9d24c",
         intel: "44d14894d3f3bd38a2561f7ae15bccdd5620fe90f4a08471ff915d92ec3872e1"

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
