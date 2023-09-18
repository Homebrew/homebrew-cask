cask "reqable" do
  arch arm: "arm64", intel: "x86_64"
  
  version "1.4.1,43"
  sha256 arm:   "fbbb5ae8bb1cbb5a07cc961c56d74025f007f1f25d08e5eea1b66d5df8e1f831",
         intel: "dfcfb2bd5b353c7f72ec3747cdfcebdad7de1c9e077d90365df4157abbbc93f7"

  url "https://api.reqable.com/download?platform=macos&arch=#{arch}"
  name "Reqable"
  desc "Advanced API Debugging Proxy"
  homepage "https://reqable.com/"

  livecheck do
    url "https://api.reqable.com/version/appcast?platform=macos&arch=#{arch}&locale=en-US"
    strategy :sparkle
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
