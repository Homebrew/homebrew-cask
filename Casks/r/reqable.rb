cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "2.10.0"
  sha256 arm:   "82e65c826091e947d1a041fad3d2c9982b9048f4ccbb17a1814f918a0cae010d",
         intel: "1e354eb1f08605c3199dd06d692e1071137cc2fd6704c956e8cfcdcf7fc3fbeb"

  url "https://github.com/reqable/reqable-app/releases/download/#{version}/reqable-app-macos-#{arch}.dmg",
      verified: "github.com/reqable/reqable-app/"
  name "Reqable"
  desc "Advanced API Debugging Proxy"
  homepage "https://reqable.com/"

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
