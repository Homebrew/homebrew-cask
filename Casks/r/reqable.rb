cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "2.33.5"
  sha256 arm:   "4e63bdcb2ce139bbbd40d817ddf908f919bb7bbf9e7ebbfddf1b83ef34b81c3f",
         intel: "c69e118f4e49fa7a2969ea7b9b1037f56f52828163c660a0715a13c5f479aa3f"

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
