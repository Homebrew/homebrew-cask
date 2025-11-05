cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.21"
  sha256 arm:   "4a774b69203b2e1e9d869af3c885447cfa029d849be8dca4c21341c5fe510407",
         intel: "619b2e9d4303fdc6781d7636f90f34b87a3d9f94eb00993c9f3bb01fa395f93a"

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
