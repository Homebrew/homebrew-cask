cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "2.17.0"
  sha256 arm:   "8cead6ec0f9bf7fdfd157ca6966529e7e4426254c40acb69f19dfbdb1abf2692",
         intel: "59ba037ce476b770e365b96498ebc0c9278a2f599a8d8c145f5f6adebfc2e1e0"

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
