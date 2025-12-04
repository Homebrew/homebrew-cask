cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.29"
  sha256 arm:   "8915014fd9f1c6137003561a57d48920aa88c512a25b30cffc46ccf5f487b872",
         intel: "264de57e85b5f3036b24ace3af56b96bfe5cff7d8eb508f6ff1e3d114685f97a"

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
