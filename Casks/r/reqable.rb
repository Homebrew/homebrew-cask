cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "2.33.6"
  sha256 arm:   "9170d1e1f35f170f8f80d5c2c78fc2edaa4d3fe15e699191bc0e1901034cf836",
         intel: "23ece1408b28758e1f7121cda27e9f174cca4f826721a0018057f0c3b2e8593c"

  url "https://github.com/reqable/reqable-app/releases/download/#{version}/reqable-app-macos-#{arch}.dmg",
      verified: "github.com/reqable/reqable-app/"
  name "Reqable"
  desc "Advanced API Debugging Proxy"
  homepage "https://reqable.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

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
